# JuliaSyntax

[![Build Status](https://github.com/c42f/JuliaSyntax.jl/workflows/CI/badge.svg)](https://github.com/c42f/JuliaSyntax.jl/actions)

Yet another Julia frontend, written in Julia.

Goals:
* Parse Julia code with precise source mapping
* Avoid worrying about how much work this will be 😅

Nice to have:
* Speedy enough for interactive editing
* Production quality error recovery and reporting
* "Compilation as an API" to support all sorts of tooling
* Make the code easy to maintain in parallel with Julia's flisp frontend
* Go further than parsing - macro expansion, syntax desugaring and scope analysis

## Design

The tree datastructure design here is hard:

1. The symbolic part of compilation (the compiler frontend) incrementally
   abstracts the source text, but errors along the way should refer back to the
   source.
  - The tree must be a lossless representation of the source text
  - Some aspects of the source text (comments, most whitespace) are irrelevant
    to parsing.
  - More aspects of the source text are irrelevant after we have an abstract
    syntax tree of the surface syntax. Some good examples here are the
    parentheses in `2*(x + y)` and the explicit vs implicit multiplication
    symbol in `2*x` vs `2x`.

2. There's various type of *analyses* 
- There's many useful ways to augment, a syntax tree depending on use case.
- Analysis algorithms should be able to act on any tree type, ignoring
  but carrying augmentations which they don't know about.

Let's tackle it by prototyping several important work flows:

* Syntax transformations
  - Choose some macros to implement. This is a basic test of mixing source
    trees from different files while preserving precise source locations.
* Formatting
  - Re-indent a file. This tests the handling of syntax trivia.
* Refactoring
  - A pass to rename local variables. This tests how information from further
    down the compilation pipeline can be attached to the syntax tree and used
    to modify the source code.
* Precise error reporting in lowering
  - Syntax desugaring `[a, b] = (c, d)` should report "invalid assignment
    location `[a, b]`". But at a precise source location.
  - Try something several layers deeper inside lowering? For example "macro
    definition not allowed inside a local scope"
* Incremental reparsing
  - Reparse a source file, given a byte range replacement


## Tree design

### Raw syntax tree / Green tree

Raw syntax tree (RST, or "Green tree" in the terminology from Roslyn)

We want GreenNode to be
* *structurally minimal* — For efficiency and generality
* *immutable*            — For efficiency (& thread safety?)
* *complete*             — To preserve parser knowledge
* *token agnostic*       — To allow use with any source language

```
for i = 1:10
    a + 2
    # hi
    c
    #= hey
       ho =#
end
```

The simplest idea possible is to have:
* Leaf nodes are a single token
* Children are in source order

```
- - trivia
I - identifier
L - literal

[for]
    - "for"
    - " "
    [=]
        I "i"
        - " "
        - "="
        - " "
        [call]
            I "1"
            - ":"
            L "10"
    - "\n    "
    [call]
        I "a"
        - " "
        I "+"
        - " "
        L "2"
    - "\n    "
    - "# hi"
    - "\n    "
    I "c"
    - "\n    "
    - #= hey\n       ho =#'
    - "\n"
    - "end"
```

Call represents a challange for the AST vs RST in terms of node placement /
iteration for infix operators vs normal prefix function calls.

- The normal problem of `a + 1` vs `+(a, 1)`
- Or worse, `a + 1 + 2` vs `+(a, 1, 2)`

Clearly in the AST's *interface* we need to abstract over this placement. For
example with something like the normal Julia AST's iteration order.

### Abstract syntax tree

By pointing to green tree nodes, AST nodes become tracable back to the original
source.

Unlike other languages, designing a new AST is tricky because the existing
`Expr` is a very public API used in every macro expansion. User-defined
macro expansions interpose between the source text and lowering, and using
`Expr` looses source information in many ways.

There seems to be a few ways forward:
* Maybe we can give `Expr` some new semi-hidden fields to point back to the
  green tree nodes that the `Expr` or its `args` list came from?
* We can use the existing `Expr` during macro expansion and try to recover
  source information after macro expansion using heuristics. Likely the
  presence of correct hygiene can help with this.
* Introducing a new AST would be possible if it were opt-in for new-style
  macros only. Fixing hygiene should go along with this. Design challenge: How
  do we make manipulating expressions reasonable when literals need to carry
  source location?

One option which may help bridge between locationless ASTs and something new
may be to have wrappers for the small number of literal types we need to cover.
For example:

```julia
SourceSymbol <: AbstractSymbol
SourceInt    <: Integer
SourceString <: AbstractString
```

Having source location attached to symbols would potentially solve most of the
hygine problem. There's still the problem of macro helper functions which use
symbol literals; we can't very well be changing the meaning of `:x`! Perhaps
the trick there is to try capturing the current module at the location of the
interpolation syntax. Eg, if you do `:(y + $x)`, lowering expands this to
`Core._expr(:call, :+, :y, x)`, but it could expand it to something like
`Core._expr(:call, :+, :y, _add_source_symbol(_module_we_are_lowering_into, x))`?

## Error recovery

Some disorganized musings about error recovery

Different types of errors seem to occur...

* Disallowed syntax (such as lack of spaces in conditional expressions)
  where we can reasonably just continue parsing the production and emit the
  node with an error flag which is otherwise fully formed. In some cases like
  parsing infix expressions with a missing tail, emitting a zero width error
  token can lead to a fully formed parse tree without the productions up the
  stack needing to participate in recovery.
* A token which is disallowed in current context. Eg, `=` in parse_atom, or a
  closing token inside an infix expression. Here we can emit a `K"Error"`, but
  we can't descend further into the parse tree; we must pop several recursive
  frames off. Seems tricky!

A typical structure is as follows:

```julia
function parse_foo(ps)
    mark = position(ps)
    parse_bar(ps)  # What if this fails?
    if peek(ps) == K"some-token"
        bump(ps)
        parse_baz(ps)  # What if this fails?
        emit(ps, mark, K"foo")
    end
end
```

Emitting plain error tokens are good in unfinished infix expressions:

```julia
begin
    a = x +
end
```

The "missing end" problem is tricky, as the intermediate syntax is valid; the
problem is often only obvious until we get to EOF.

Missing end
```julia
function f()
    begin
        a = 10
end

# <-- Indentation would be wrong if g() was an inner function of f.
function g()
end
```

It seems like ideal error recorvery would need to backtrack in this case. For
example:

- Pop back to the frame which was parsing `f()`
- Backtrack through the parse events until we find a function with indentation
  mismatched to the nesting of the parent.
- Reset ParseStream to a parsing checkpoint before `g()` was called
- Emit error and exit the function parsing `f()`
- Restart parsing
- Somehow make sure all of this can't result in infinite recursion 😅

For this kind of recovery it sure would be good if we could reify the program
stack into a parser state object...

Missing commas or closing brackets in nested structures also present the
existing parser with a problem.

```julia
f(a,
  g(b,
    c    # -- missing comma?
    d),
  e)
```

Again the local indentation might tell a story

```julia
f(a,
  g(b,
    c    # -- missing closing `)` ?
  d)
```

But not always!

```julia
f(a,
  g(b,
    c    # -- missing closing `)` ?
  d)
```

## Fun research questions

* Given the raw tree (the green tree, in Roslyn terminology) can we regress a
  model of indentiation? Such that formatting rules for new code is defined
  implicitly by a software project's existing style?

# Resources

## C# Roslyn

[Persistence, façades and Roslyn’s red-green trees](https://ericlippert.com/2012/06/08/red-green-trees/)
* [Roslyn optimization overview](https://github.com/KirillOsenkov/Bliki/wiki/Roslyn-Immutable-Trees)
* [Literate C# Usage Example](https://johtela.github.io/LiterateCS/LiterateCS/BlockBuilder.html)


## Rust-analyzer

`rust-analyzer` seems to be very close to what I'm buildin here, and has come
to the same conclusions on green tree layout with explicit trivia nodes.  Their
document on internals
[here](https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/dev/syntax.md)
is great. Points of note:

* They have *three* trees!
  1. Green trees exactly like mine (pretty much all the same design
     decisions, including trivia storage). Though note that the team are still
     [toying with](https://github.com/rust-analyzer/rust-analyzer/issues/6584)
     the idea of using the Roslyn model of trivia.
  2. Untyped red syntax trees somewhat like mine, but much more minimal. For
     example, these don't attempt to reorder children.
  3. A typed AST layer with a type for each expression head. The AST searches
     for children by dynamically traversing the child list each time, rather
     than having a single canonical ordering or remembering the placement of
     children which the parser knew.
* "Parser does not see whitespace nodes. Instead, they are attached to the
  tree in the TreeSink layer." This may be relevant to us - it's a pain to
  attach whitespace to otherwise significant tokens, and inefficient to
  allocate and pass around a dynamic list of whitespace trivia.
* "In practice, incremental reparsing doesn't actually matter much for IDE
  use-cases, parsing from scratch seems to be fast enough." (I wonder why
  they've implemented incremental parsing then?)
* There's various comments about macros... Rust macro expansion seems quite
  different from Julia (it appears it may be interleaved with parsing??)

In general I think it's unclear whether we want typed ASTs in Julia and we
particularly need to deal with the fact that `Expr` is the existing public
interface. Could we have `Expr2` wrap `SyntaxNode`?

* A related very useful set of blog posts which discuss using the rust syntax
  tree library (rowan) for representing of a non-rust toy language is here
  https://dev.to/cad97/lossless-syntax-trees-280c

Not all the design decisions in `rust-analyzer` are finalized but the 
[architecture document](https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/dev/architecture.md)
is a fantastic source of design inspiration.

Highlights:
* "The parser is independent of the particular tree structure and particular
  representation of the tokens. It transforms one flat stream of events into
  another flat stream of events."  This seems great, let's adopt it!
* TODO

## RSLint

[RSLint](https://rslint.org/dev) is a linter for javascript, built in Rust. It
uses the same parsing infrastructure and green tree libraries `rust-analyzer`.
There's an excellent and friendly high level overview of how all this works in
the rslint [parsing devdocs](https://rslint.org/dev/parsing.html).

Points of note:

* Backtracking and restarting the parser on error is actually quite simple in
  the architecture we (mostly) share with `rust-analyzer`:
  > ... events allow us to cheaply backtrack the parser by simply draining
  > the events and resetting the token source cursor back to some place.

* The section on [error
  recovery](https://rslint.org/dev/parsing.html#error-recovery) is interesting;
  they talk about various error recovery strategies.

## Diagnostics

Rust is renowned for having great compiler diagnostics, so it's probably a good
place to get inspiration from.

Some resources:
* [rustc_errors::Diagnostic](https://doc.rust-lang.org/stable/nightly-rustc/rustc_errors/struct.Diagnostic.html)
* The source of the Rust compiler's diagnostics system:
  - The [`println!` macro](https://github.com/rust-lang/rust/blob/0b6f079e4987ded15c13a15b734e7cfb8176839f/compiler/rustc_builtin_macros/src/format.rs)
    shows how these can be emitted from macros
  - The parser's [diagnostics.rs](https://github.com/rust-lang/rust/blob/0b6f079e4987ded15c13a15b734e7cfb8176839f/compiler/rustc_parse/src/parser/diagnostics.rs)

## General resources about parsing

* [Modern parser generator](https://matklad.github.io/2018/06/06/modern-parser-generator.html)
  has a lot of practical notes on writing parsers. Highlights:
  - Encourages writing tests for handwritten parsers as inline comments
  - Mentions Pratt parsers for simple operator precedence parsing. Good articles:
    - [From Aleksey Kladov (matklad - the main rust-analyzer author, etc)](https://matklad.github.io/2020/04/13/simple-but-powerful-pratt-parsing.html)
    - [From Bob Nystrom (munificent - one of the Dart devs, etc](http://journal.stuffwithstuff.com/2011/03/19/pratt-parsers-expression-parsing-made-easy/)
  - Some discussion of error recovery
