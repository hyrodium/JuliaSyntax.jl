# Mapping from token string identifiers to enumeration values as used in @K_str

const _str_to_kind = let Ts = TzTokens
Dict([
"EndMarker"      =>  Ts.ENDMARKER
"Error"          =>  Ts.ERROR
"Comment"        =>  Ts.COMMENT
"Whitespace"     =>  Ts.WHITESPACE
"Identifier"     =>  Ts.IDENTIFIER
"VarIdentifier"  =>  Ts.VAR_IDENTIFIER
"@"              =>  Ts.AT_SIGN
","              =>  Ts.COMMA
";"              =>  Ts.SEMICOLON

"BEGIN_KEYWORDS" => Ts.begin_keywords
"Keyword"     =>  Ts.KEYWORD
"abstract"    =>  Ts.ABSTRACT
"baremodule"  =>  Ts.BAREMODULE
"begin"       =>  Ts.BEGIN
"break"       =>  Ts.BREAK
"catch"       =>  Ts.CATCH
"const"       =>  Ts.CONST
"continue"    =>  Ts.CONTINUE
"do"          =>  Ts.DO
"else"        =>  Ts.ELSE
"elseif"      =>  Ts.ELSEIF
"end"         =>  Ts.END
"export"      =>  Ts.EXPORT
"finally"     =>  Ts.FINALLY
"for"         =>  Ts.FOR
"function"    =>  Ts.FUNCTION
"global"      =>  Ts.GLOBAL
"if"          =>  Ts.IF
"import"      =>  Ts.IMPORT
"let"         =>  Ts.LET
"local"       =>  Ts.LOCAL
"macro"       =>  Ts.MACRO
"module"      =>  Ts.MODULE
"mutable"     =>  Ts.MUTABLE
"new"         =>  Ts.NEW
"outer"       =>  Ts.OUTER
"primitive"   =>  Ts.PRIMITIVE
"quote"       =>  Ts.QUOTE
"return"      =>  Ts.RETURN
"struct"      =>  Ts.STRUCT
"try"         =>  Ts.TRY
"type"        =>  Ts.TYPE
"using"       =>  Ts.USING
"while"       =>  Ts.WHILE
"END_KEYWORDS" => Ts.end_keywords

"BEGIN_CSTPARSER"    =>  Ts.begin_cstparser
"InvisibleBrackets"  =>  Ts.INVISIBLE_BRACKETS
"Nothing"            =>  Ts.NOTHING
"Ws"                 =>  Ts.WS
"SemicolonWs"        =>  Ts.SEMICOLON_WS
"NewlineWs"          =>  Ts.NEWLINE_WS
"EmptyWs"            =>  Ts.EMPTY_WS
"END_CSTPARSER"      =>  Ts.end_cstparser

"BEGIN_LITERAL"  =>  Ts.begin_literal
"Literal"        =>  Ts.LITERAL
"Integer"        =>  Ts.INTEGER
"BinInt"         =>  Ts.BIN_INT
"HexInt"         =>  Ts.HEX_INT
"OctInt"         =>  Ts.OCT_INT
"Float"          =>  Ts.FLOAT
"String"         =>  Ts.STRING
"TripleString"   =>  Ts.TRIPLE_STRING
"Char"           =>  Ts.CHAR
"Cmd"            =>  Ts.CMD
"TripleCmd"      =>  Ts.TRIPLE_CMD
"true"           =>  Ts.TRUE
"false"          =>  Ts.FALSE
"END_LITERAL"    =>  Ts.end_literal

"BEGIN_DELIMITERS"  => Ts.begin_delimiters
"["  =>  Ts.LSQUARE
"]"  =>  Ts.RSQUARE
"{"  =>  Ts.LBRACE
"}"  =>  Ts.RBRACE
"("  =>  Ts.LPAREN
")"  =>  Ts.RPAREN
"END_DELIMITERS"    => Ts.end_delimiters

"BEGIN_OPS"  => Ts.begin_ops
"OP"  => Ts.OP
"..." => Ts.DDDOT

# Level 1
"BEGIN_ASSIGNMENTS"  => Ts.begin_assignments
"="     =>  Ts.EQ
"+="    =>  Ts.PLUS_EQ
"-="    =>  Ts.MINUS_EQ
"*="    =>  Ts.STAR_EQ
"/="    =>  Ts.FWD_SLASH_EQ
"//="   =>  Ts.FWDFWD_SLASH_EQ
"|="    =>  Ts.OR_EQ
"^="    =>  Ts.CIRCUMFLEX_EQ
"÷="    =>  Ts.DIVISION_EQ
"%="    =>  Ts.REM_EQ
"<<="   =>  Ts.LBITSHIFT_EQ
">>="   =>  Ts.RBITSHIFT_EQ
">>>="  =>  Ts.UNSIGNED_BITSHIFT_EQ
"\\="   =>  Ts.BACKSLASH_EQ
"&="    =>  Ts.AND_EQ
":="    =>  Ts.COLON_EQ
"~"     =>  Ts.APPROX
"\$="    =>  Ts.EX_OR_EQ
"⊻="    =>  Ts.XOR_EQ
"END_ASSIGNMENTS"    => Ts.end_assignments

"BEGIN_PAIRARROW"  => Ts.begin_pairarrow
"=>Ts."  =>  Ts.PAIR_ARROW
"END_PAIRARROW"    => Ts.end_pairarrow

# Level 2
"BEGIN_CONDITIONAL"  => Ts.begin_conditional
"?"  =>  Ts.CONDITIONAL
"END_CONDITIONAL"    => Ts.end_conditional

# Level 3
"BEGIN_ARROW"  => Ts.begin_arrow
"-->"   =>  Ts.RIGHT_ARROW
"<--"   =>  Ts.LEFT_ARROW
"<-->"  =>  Ts.DOUBLE_ARROW
"←"     =>  Ts.LEFTWARDS_ARROW
"→"     =>  Ts.RIGHTWARDS_ARROW
"↔"     =>  Ts.LEFT_RIGHT_ARROW
"↚"     =>  Ts.LEFTWARDS_ARROW_WITH_STROKE
"↛"     =>  Ts.RIGHTWARDS_ARROW_WITH_STROKE
"↞"     =>  Ts.LEFTWARDS_TWO_HEADED_ARROW
"↠"     =>  Ts.RIGHTWARDS_TWO_HEADED_ARROW
"↢"     =>  Ts.LEFTWARDS_ARROW_WITH_TAIL
"↣"     =>  Ts.RIGHTWARDS_ARROW_WITH_TAIL
"↤"     =>  Ts.LEFTWARDS_ARROW_FROM_BAR
"↦"     =>  Ts.RIGHTWARDS_ARROW_FROM_BAR
"↮"     =>  Ts.LEFT_RIGHT_ARROW_WITH_STROKE
"⇎"     =>  Ts.LEFT_RIGHT_DOUBLE_ARROW_WITH_STROKE
"⇍"     =>  Ts.LEFTWARDS_DOUBLE_ARROW_WITH_STROKE
"⇏"     =>  Ts.RIGHTWARDS_DOUBLE_ARROW_WITH_STROKE
"⇐"     =>  Ts.LEFTWARDS_DOUBLE_ARROW
"⇒"     =>  Ts.RIGHTWARDS_DOUBLE_ARROW
"⇔"     =>  Ts.LEFT_RIGHT_DOUBLE_ARROW
"⇴"     =>  Ts.RIGHT_ARROW_WITH_SMALL_CIRCLE
"⇶"     =>  Ts.THREE_RIGHTWARDS_ARROWS
"⇷"     =>  Ts.LEFTWARDS_ARROW_WITH_VERTICAL_STROKE
"⇸"     =>  Ts.RIGHTWARDS_ARROW_WITH_VERTICAL_STROKE
"⇹"     =>  Ts.LEFT_RIGHT_ARROW_WITH_VERTICAL_STROKE
"⇺"     =>  Ts.LEFTWARDS_ARROW_WITH_DOUBLE_VERTICAL_STROKE
"⇻"     =>  Ts.RIGHTWARDS_ARROW_WITH_DOUBLE_VERTICAL_STROKE
"⇼"     =>  Ts.LEFT_RIGHT_ARROW_WITH_DOUBLE_VERTICAL_STROKE
"⇽"     =>  Ts.LEFTWARDS_OPEN_HEADED_ARROW
"⇾"     =>  Ts.RIGHTWARDS_OPEN_HEADED_ARROW
"⇿"     =>  Ts.LEFT_RIGHT_OPEN_HEADED_ARROW
"⟵"     =>  Ts.LONG_LEFTWARDS_ARROW
"⟶"     =>  Ts.LONG_RIGHTWARDS_ARROW
"⟷"     =>  Ts.LONG_LEFT_RIGHT_ARROW
"⟹"     =>  Ts.LONG_RIGHTWARDS_DOUBLE_ARROW
"⟺"     =>  Ts.LONG_LEFT_RIGHT_DOUBLE_ARROW
"⟻"     =>  Ts.LONG_LEFTWARDS_ARROW_FROM_BAR
"⟼"     =>  Ts.LONG_RIGHTWARDS_ARROW_FROM_BAR
"⟽"     =>  Ts.LONG_LEFTWARDS_DOUBLE_ARROW_FROM_BAR
"⟾"     =>  Ts.LONG_RIGHTWARDS_DOUBLE_ARROW_FROM_BAR
"⟿"     =>  Ts.LONG_RIGHTWARDS_SQUIGGLE_ARROW
"⤀"     =>  Ts.RIGHTWARDS_TWO_HEADED_ARROW_WITH_VERTICAL_STROKE
"⤁"     =>  Ts.RIGHTWARDS_TWO_HEADED_ARROW_WITH_DOUBLE_VERTICAL_STROKE
"⤂"     =>  Ts.LEFTWARDS_DOUBLE_ARROW_WITH_VERTICAL_STROKE
"⤃"     =>  Ts.RIGHTWARDS_DOUBLE_ARROW_WITH_VERTICAL_STROKE
"⤄"     =>  Ts.LEFT_RIGHT_DOUBLE_ARROW_WITH_VERTICAL_STROKE
"⤅"     =>  Ts.RIGHTWARDS_TWO_HEADED_ARROW_FROM_BAR
"⤆"     =>  Ts.LEFTWARDS_DOUBLE_ARROW_FROM_BAR
"⤇"     =>  Ts.RIGHTWARDS_DOUBLE_ARROW_FROM_BAR
"⤌"     =>  Ts.LEFTWARDS_DOUBLE_DASH_ARROW
"⤍"     =>  Ts.RIGHTWARDS_DOUBLE_DASH_ARROW
"⤎"     =>  Ts.LEFTWARDS_TRIPLE_DASH_ARROW
"⤏"     =>  Ts.RIGHTWARDS_TRIPLE_DASH_ARROW
"⤐"     =>  Ts.RIGHTWARDS_TWO_HEADED_TRIPLE_DASH_ARROW
"⤑"     =>  Ts.RIGHTWARDS_ARROW_WITH_DOTTED_STEM
"⤔"     =>  Ts.RIGHTWARDS_ARROW_WITH_TAIL_WITH_VERTICAL_STROKE
"⤕"     =>  Ts.RIGHTWARDS_ARROW_WITH_TAIL_WITH_DOUBLE_VERTICAL_STROKE
"⤖"     =>  Ts.RIGHTWARDS_TWO_HEADED_ARROW_WITH_TAIL
"⤗"     =>  Ts.RIGHTWARDS_TWO_HEADED_ARROW_WITH_TAIL_WITH_VERTICAL_STROKE
"⤘"     =>  Ts.RIGHTWARDS_TWO_HEADED_ARROW_WITH_TAIL_WITH_DOUBLE_VERTICAL_STROKE
"⤝"     =>  Ts.LEFTWARDS_ARROW_TO_BLACK_DIAMOND
"⤞"     =>  Ts.RIGHTWARDS_ARROW_TO_BLACK_DIAMOND
"⤟"     =>  Ts.LEFTWARDS_ARROW_FROM_BAR_TO_BLACK_DIAMOND
"⤠"     =>  Ts.RIGHTWARDS_ARROW_FROM_BAR_TO_BLACK_DIAMOND
"⥄"     =>  Ts.SHORT_RIGHTWARDS_ARROW_ABOVE_LEFTWARDS_ARROW
"⥅"     =>  Ts.RIGHTWARDS_ARROW_WITH_PLUS_BELOW
"⥆"     =>  Ts.LEFTWARDS_ARROW_WITH_PLUS_BELOW
"⥇"     =>  Ts.RIGHTWARDS_ARROW_THROUGH_X
"⥈"     =>  Ts.LEFT_RIGHT_ARROW_THROUGH_SMALL_CIRCLE
"⥊"     =>  Ts.LEFT_BARB_UP_RIGHT_BARB_DOWN_HARPOON
"⥋"     =>  Ts.LEFT_BARB_DOWN_RIGHT_BARB_UP_HARPOON
"⥎"     =>  Ts.LEFT_BARB_UP_RIGHT_BARB_UP_HARPOON
"⥐"     =>  Ts.LEFT_BARB_DOWN_RIGHT_BARB_DOWN_HARPOON
"⥒"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_UP_TO_BAR
"⥓"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_UP_TO_BAR
"⥖"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_DOWN_TO_BAR
"⥗"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_DOWN_TO_BAR
"⥚"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_UP_FROM_BAR
"⥛"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_UP_FROM_BAR
"⥞"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_DOWN_FROM_BAR
"⥟"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_DOWN_FROM_BAR
"⥢"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_UP_ABOVE_LEFTWARDS_HARPOON_WITH_BARB_DOWN
"⥤"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_UP_ABOVE_RIGHTWARDS_HARPOON_WITH_BARB_DOWN
"⥦"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_UP_ABOVE_RIGHTWARDS_HARPOON_WITH_BARB_UP
"⥧"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_DOWN_ABOVE_RIGHTWARDS_HARPOON_WITH_BARB_DOWN
"⥨"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_UP_ABOVE_LEFTWARDS_HARPOON_WITH_BARB_UP
"⥩"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_DOWN_ABOVE_LEFTWARDS_HARPOON_WITH_BARB_DOWN
"⥪"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_UP_ABOVE_LONG_DASH
"⥫"     =>  Ts.LEFTWARDS_HARPOON_WITH_BARB_DOWN_BELOW_LONG_DASH
"⥬"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_UP_ABOVE_LONG_DASH
"⥭"     =>  Ts.RIGHTWARDS_HARPOON_WITH_BARB_DOWN_BELOW_LONG_DASH
"⥰"     =>  Ts.RIGHT_DOUBLE_ARROW_WITH_ROUNDED_HEAD
"⧴"     =>  Ts.RULE_DELAYED
"⬱"     =>  Ts.THREE_LEFTWARDS_ARROWS
"⬰"     =>  Ts.LEFT_ARROW_WITH_SMALL_CIRCLE
"⬲"     =>  Ts.LEFT_ARROW_WITH_CIRCLED_PLUS
"⬳"     =>  Ts.LONG_LEFTWARDS_SQUIGGLE_ARROW
"⬴"     =>  Ts.LEFTWARDS_TWO_HEADED_ARROW_WITH_VERTICAL_STROKE
"⬵"     =>  Ts.LEFTWARDS_TWO_HEADED_ARROW_WITH_DOUBLE_VERTICAL_STROKE
"⬶"     =>  Ts.LEFTWARDS_TWO_HEADED_ARROW_FROM_BAR
"⬷"     =>  Ts.LEFTWARDS_TWO_HEADED_TRIPLE_DASH_ARROW
"⬸"     =>  Ts.LEFTWARDS_ARROW_WITH_DOTTED_STEM
"⬹"     =>  Ts.LEFTWARDS_ARROW_WITH_TAIL_WITH_VERTICAL_STROKE
"⬺"     =>  Ts.LEFTWARDS_ARROW_WITH_TAIL_WITH_DOUBLE_VERTICAL_STROKE
"⬻"     =>  Ts.LEFTWARDS_TWO_HEADED_ARROW_WITH_TAIL
"⬼"     =>  Ts.LEFTWARDS_TWO_HEADED_ARROW_WITH_TAIL_WITH_VERTICAL_STROKE
"⬽"     =>  Ts.LEFTWARDS_TWO_HEADED_ARROW_WITH_TAIL_WITH_DOUBLE_VERTICAL_STROKE
"⬾"     =>  Ts.LEFTWARDS_ARROW_THROUGH_X
"⬿"     =>  Ts.WAVE_ARROW_POINTING_DIRECTLY_LEFT
"⭀"     =>  Ts.EQUALS_SIGN_ABOVE_LEFTWARDS_ARROW
"⭁"     =>  Ts.REVERSE_TILDE_OPERATOR_ABOVE_LEFTWARDS_ARROW
"⭂"     =>  Ts.LEFTWARDS_ARROW_ABOVE_REVERSE_ALMOST_EQUAL_TO
"⭃"     =>  Ts.RIGHTWARDS_ARROW_THROUGH_GREATER_THAN
"⭄"     =>  Ts.RIGHTWARDS_ARROW_THROUGH_SUPERSET
"⭇"     =>  Ts.REVERSE_TILDE_OPERATOR_ABOVE_RIGHTWARDS_ARROW
"⭈"     =>  Ts.RIGHTWARDS_ARROW_ABOVE_REVERSE_ALMOST_EQUAL_TO
"⭉"     =>  Ts.TILDE_OPERATOR_ABOVE_LEFTWARDS_ARROW
"⭊"     =>  Ts.LEFTWARDS_ARROW_ABOVE_ALMOST_EQUAL_TO
"⭋"     =>  Ts.LEFTWARDS_ARROW_ABOVE_REVERSE_TILDE_OPERATOR
"⭌"     =>  Ts.RIGHTWARDS_ARROW_ABOVE_REVERSE_TILDE_OPERATOR
"￩"     =>  Ts.HALFWIDTH_LEFTWARDS_ARROW
"￫"     =>  Ts.HALFWIDTH_RIGHTWARDS_ARROW
"↻"     =>  Ts.CIRCLE_ARROW_RIGHT
"⇜"     =>  Ts.LEFT_SQUIGGLE_ARROW
"⇝"     =>  Ts.RIGHT_SQUIGGLE_ARROW
"↜"     =>  Ts.LEFT_WAVE_ARROW
"↝"     =>  Ts.RIGHT_WAVE_ARROW
"↩"     =>  Ts.LEFTWARDS_ARROW_WITH_HOOK
"↪"     =>  Ts.RIGHTWARDS_ARROW_WITH_HOOK
"↫"     =>  Ts.LOOP_ARROW_LEFT
"↬"     =>  Ts.LOOP_ARROW_RIGHT
"↼"     =>  Ts.LEFT_HARPOON_UP
"↽"     =>  Ts.LEFT_HARPOON_DOWN
"⇀"     =>  Ts.RIGHT_HARPOON_UP
"⇁"     =>  Ts.RIGHT_HARPOON_DOWN
"⇄"     =>  Ts.RIGHT_LEFT_ARROWS
"⇆"     =>  Ts.LEFT_RIGHT_ARROWS
"⇇"     =>  Ts.LEFT_LEFT_ARROWS
"⇉"     =>  Ts.RIGHT_RIGHT_ARROWS
"⇋"     =>  Ts.LEFT_RIGHT_HARPOONS
"⇌"     =>  Ts.RIGHT_LEFT_HARPOONS
"⇚"     =>  Ts.L_LEFT_ARROW
"⇛"     =>  Ts.R_RIGHT_ARROW
"⇠"     =>  Ts.LEFT_DASH_ARROW
"⇢"     =>  Ts.RIGHT_DASH_ARROW
"↷"     =>  Ts.CURVE_ARROW_RIGHT
"↶"     =>  Ts.CURVE_ARROW_LEFT
"↺"     =>  Ts.CIRCLE_ARROW_LEFT
"END_ARROW"    => Ts.end_arrow

# Level 4
"BEGIN_LAZYOR" => Ts.begin_lazyor
"||"  =>  Ts.LAZY_OR
"END_LAZYOR"   => Ts.end_lazyor

# Level 5
"BEGIN_LAZYAND" => Ts.begin_lazyand
"&&"  =>  Ts.LAZY_AND
"END_LAZYAND"   => Ts.end_lazyand

# Level 6
"BEGIN_COMPARISON" => Ts.begin_comparison
"<:"   =>  Ts.ISSUBTYPE
">:"   =>  Ts.ISSUPERTYPE
">"    =>  Ts.GREATER
"<"    =>  Ts.LESS
">="   =>  Ts.GREATER_EQ
"≥"    =>  Ts.GREATER_THAN_OR_EQUAL_TO
"<="   =>  Ts.LESS_EQ
"≤"    =>  Ts.LESS_THAN_OR_EQUAL_TO
"=="   =>  Ts.EQEQ
"==="  =>  Ts.EQEQEQ
"≡"    =>  Ts.IDENTICAL_TO
"!="   =>  Ts.NOT_EQ
"≠"    =>  Ts.NOT_EQUAL_TO
"!=="  =>  Ts.NOT_IS
"≢"    =>  Ts.NOT_IDENTICAL_TO
"∈"    =>  Ts.ELEMENT_OF
"in"   =>  Ts.IN
"isa"  =>  Ts.ISA
"∉"    =>  Ts.NOT_AN_ELEMENT_OF
"∋"    =>  Ts.CONTAINS_AS_MEMBER
"∌"    =>  Ts.DOES_NOT_CONTAIN_AS_MEMBER
"⊆"    =>  Ts.SUBSET_OF_OR_EQUAL_TO
"⊈"    =>  Ts.NEITHER_A_SUBSET_OF_NOR_EQUAL_TO
"⊂"    =>  Ts.SUBSET_OF
"⊄"    =>  Ts.NOT_A_SUBSET_OF
"⊊"    =>  Ts.SUBSET_OF_WITH_NOT_EQUAL_TO
"∝"    =>  Ts.PROPORTIONAL_TO
"∊"    =>  Ts.SMALL_ELEMENT_OF
"∍"    =>  Ts.SMALL_CONTAINS_AS_MEMBER
"∥"    =>  Ts.PARALLEL_TO
"∦"    =>  Ts.NOT_PARALLEL_TO
"∷"    =>  Ts.PROPORTION
"∺"    =>  Ts.GEOMETRIC_PROPORTION
"∻"    =>  Ts.HOMOTHETIC
"∽"    =>  Ts.REVERSED_TILDE
"∾"    =>  Ts.INVERTED_LAZY_S
"≁"    =>  Ts.NOT_TILDE
"≃"    =>  Ts.ASYMPTOTICALLY_EQUAL_TO
"≄"    =>  Ts.NOT_ASYMPTOTICALLY_EQUAL_TO
"≅"    =>  Ts.APPROXIMATELY_EQUAL_TO
"≆"    =>  Ts.APPROXIMATELY_BUT_NOT_ACTUALLY_EQUAL_TO
"≇"    =>  Ts.NEITHER_APPROXIMATELY_NOR_ACTUALLY_EQUAL_TO
"≈"    =>  Ts.ALMOST_EQUAL_TO
"≉"    =>  Ts.NOT_ALMOST_EQUAL_TO
"≊"    =>  Ts.ALMOST_EQUAL_OR_EQUAL_TO
"≋"    =>  Ts.TRIPLE_TILDE
"≌"    =>  Ts.ALL_EQUAL_TO
"≍"    =>  Ts.EQUIVALENT_TO
"≎"    =>  Ts.GEOMETRICALLY_EQUIVALENT_TO
"≐"    =>  Ts.APPROACHES_THE_LIMIT
"≑"    =>  Ts.GEOMETRICALLY_EQUAL_TO
"≒"    =>  Ts.APPROXIMATELY_EQUAL_TO_OR_THE_IMAGE_OF
"≓"    =>  Ts.IMAGE_OF_OR_APPROXIMATELY_EQUAL_TO
"≔"    =>  Ts.COLON_EQUALS
"≕"    =>  Ts.EQUALS_COLON
"≖"    =>  Ts.RING_IN_EQUAL_TO
"≗"    =>  Ts.RING_EQUAL_TO
"≘"    =>  Ts.CORRESPONDS_TO
"≙"    =>  Ts.ESTIMATES
"≚"    =>  Ts.EQUIANGULAR_TO
"≛"    =>  Ts.STAR_EQUALS
"≜"    =>  Ts.DELTA_EQUAL_TO
"≝"    =>  Ts.EQUAL_TO_BY_DEFINITION
"≞"    =>  Ts.MEASURED_BY
"≟"    =>  Ts.QUESTIONED_EQUAL_TO
"≣"    =>  Ts.STRICTLY_EQUIVALENT_TO
"≦"    =>  Ts.LESS_THAN_OVER_EQUAL_TO
"≧"    =>  Ts.GREATER_THAN_OVER_EQUAL_TO
"≨"    =>  Ts.LESS_THAN_BUT_NOT_EQUAL_TO
"≩"    =>  Ts.GREATER_THAN_BUT_NOT_EQUAL_TO
"≪"    =>  Ts.MUCH_LESS_THAN
"≫"    =>  Ts.MUCH_GREATER_THAN
"≬"    =>  Ts.BETWEEN
"≭"    =>  Ts.NOT_EQUIVALENT_TO
"≮"    =>  Ts.NOT_LESS_THAN
"≯"    =>  Ts.NOT_GREATER_THAN
"≰"    =>  Ts.NEITHER_LESS_THAN_NOR_EQUAL_TO
"≱"    =>  Ts.NEITHER_GREATER_THAN_NOR_EQUAL_TO
"≲"    =>  Ts.LESS_THAN_OR_EQUIVALENT_TO
"≳"    =>  Ts.GREATER_THAN_OR_EQUIVALENT_TO
"≴"    =>  Ts.NEITHER_LESS_THAN_NOR_EQUIVALENT_TO
"≵"    =>  Ts.NEITHER_GREATER_THAN_NOR_EQUIVALENT_TO
"≶"    =>  Ts.LESS_THAN_OR_GREATER_THAN
"≷"    =>  Ts.GREATER_THAN_OR_LESS_THAN
"≸"    =>  Ts.NEITHER_LESS_THAN_NOR_GREATER_THAN
"≹"    =>  Ts.NEITHER_GREATER_THAN_NOR_LESS_THAN
"≺"    =>  Ts.PRECEDES
"≻"    =>  Ts.SUCCEEDS
"≼"    =>  Ts.PRECEDES_OR_EQUAL_TO
"≽"    =>  Ts.SUCCEEDS_OR_EQUAL_TO
"≾"    =>  Ts.PRECEDES_OR_EQUIVALENT_TO
"≿"    =>  Ts.SUCCEEDS_OR_EQUIVALENT_TO
"⊀"    =>  Ts.DOES_NOT_PRECEDE
"⊁"    =>  Ts.DOES_NOT_SUCCEED
"⊃"    =>  Ts.SUPERSET_OF
"⊅"    =>  Ts.NOT_A_SUPERSET_OF
"⊇"    =>  Ts.SUPERSET_OF_OR_EQUAL_TO
"⊉"    =>  Ts.NEITHER_A_SUPERSET_OF_NOR_EQUAL_TO
"⊋"    =>  Ts.SUPERSET_OF_WITH_NOT_EQUAL_TO
"⊏"    =>  Ts.SQUARE_IMAGE_OF
"⊐"    =>  Ts.SQUARE_ORIGINAL_OF
"⊑"    =>  Ts.SQUARE_IMAGE_OF_OR_EQUAL_TO
"⊒"    =>  Ts.SQUARE_ORIGINAL_OF_OR_EQUAL_TO
"⊜"    =>  Ts.CIRCLED_EQUALS
"⊩"    =>  Ts.FORCES
"⊬"    =>  Ts.DOES_NOT_PROVE
"⊮"    =>  Ts.DOES_NOT_FORCE
"⊰"    =>  Ts.PRECEDES_UNDER_RELATION
"⊱"    =>  Ts.SUCCEEDS_UNDER_RELATION
"⊲"    =>  Ts.NORMAL_SUBGROUP_OF
"⊳"    =>  Ts.CONTAINS_AS_NORMAL_SUBGROUP
"⊴"    =>  Ts.NORMAL_SUBGROUP_OF_OR_EQUAL_TO
"⊵"    =>  Ts.CONTAINS_AS_NORMAL_SUBGROUP_OR_EQUAL_TO
"⊶"    =>  Ts.ORIGINAL_OF
"⊷"    =>  Ts.IMAGE_OF
"⋍"    =>  Ts.REVERSED_TILDE_EQUALS
"⋐"    =>  Ts.DOUBLE_SUBSET
"⋑"    =>  Ts.DOUBLE_SUPERSET
"⋕"    =>  Ts.EQUAL_AND_PARALLEL_TO
"⋖"    =>  Ts.LESS_THAN_WITH_DOT
"⋗"    =>  Ts.GREATER_THAN_WITH_DOT
"⋘"    =>  Ts.VERY_MUCH_LESS_THAN
"⋙"    =>  Ts.VERY_MUCH_GREATER_THAN
"⋚"    =>  Ts.LESS_THAN_EQUAL_TO_OR_GREATER_THAN
"⋛"    =>  Ts.GREATER_THAN_EQUAL_TO_OR_LESS_THAN
"⋜"    =>  Ts.EQUAL_TO_OR_LESS_THAN
"⋝"    =>  Ts.EQUAL_TO_OR_GREATER_THAN
"⋞"    =>  Ts.EQUAL_TO_OR_PRECEDES
"⋟"    =>  Ts.EQUAL_TO_OR_SUCCEEDS
"⋠"    =>  Ts.DOES_NOT_PRECEDE_OR_EQUAL
"⋡"    =>  Ts.DOES_NOT_SUCCEED_OR_EQUAL
"⋢"    =>  Ts.NOT_SQUARE_IMAGE_OF_OR_EQUAL_TO
"⋣"    =>  Ts.NOT_SQUARE_ORIGINAL_OF_OR_EQUAL_TO
"⋤"    =>  Ts.SQUARE_IMAGE_OF_OR_NOT_EQUAL_TO
"⋥"    =>  Ts.SQUARE_ORIGINAL_OF_OR_NOT_EQUAL_TO
"⋦"    =>  Ts.LESS_THAN_BUT_NOT_EQUIVALENT_TO
"⋧"    =>  Ts.GREATER_THAN_BUT_NOT_EQUIVALENT_TO
"⋨"    =>  Ts.PRECEDES_BUT_NOT_EQUIVALENT_TO
"⋩"    =>  Ts.SUCCEEDS_BUT_NOT_EQUIVALENT_TO
"⋪"    =>  Ts.NOT_NORMAL_SUBGROUP_OF
"⋫"    =>  Ts.DOES_NOT_CONTAIN_AS_NORMAL_SUBGROUP
"⋬"    =>  Ts.NOT_NORMAL_SUBGROUP_OF_OR_EQUAL_TO
"⋭"    =>  Ts.DOES_NOT_CONTAIN_AS_NORMAL_SUBGROUP_OR_EQUAL
"⋲"    =>  Ts.ELEMENT_OF_WITH_LONG_HORIZONTAL_STROKE
"⋳"    =>  Ts.ELEMENT_OF_WITH_VERTICAL_BAR_AT_END_OF_HORIZONTAL_STROKE
"⋴"    =>  Ts.SMALL_ELEMENT_OF_WITH_VERTICAL_BAR_AT_END_OF_HORIZONTAL_STROKE
"⋵"    =>  Ts.ELEMENT_OF_WITH_DOT_ABOVE
"⋶"    =>  Ts.ELEMENT_OF_WITH_OVERBAR
"⋷"    =>  Ts.SMALL_ELEMENT_OF_WITH_OVERBAR
"⋸"    =>  Ts.ELEMENT_OF_WITH_UNDERBAR
"⋹"    =>  Ts.ELEMENT_OF_WITH_TWO_HORIZONTAL_STROKES
"⋺"    =>  Ts.CONTAINS_WITH_LONG_HORIZONTAL_STROKE
"⋻"    =>  Ts.CONTAINS_WITH_VERTICAL_BAR_AT_END_OF_HORIZONTAL_STROKE
"⋼"    =>  Ts.SMALL_CONTAINS_WITH_VERTICAL_BAR_AT_END_OF_HORIZONTAL_STROKE
"⋽"    =>  Ts.CONTAINS_WITH_OVERBAR
"⋾"    =>  Ts.SMALL_CONTAINS_WITH_OVERBAR
"⋿"    =>  Ts.Z_NOTATION_BAG_MEMBERSHIP
"⟈"    =>  Ts.REVERSE_SOLIDUS_PRECEDING_SUBSET
"⟉"    =>  Ts.SUPERSET_PRECEDING_SOLIDUS
"⟒"    =>  Ts.ELEMENT_OF_OPENING_UPWARDS
"⦷"    =>  Ts.CIRCLED_PARALLEL
"⧀"    =>  Ts.CIRCLED_LESS_THAN
"⧁"    =>  Ts.CIRCLED_GREATER_THAN
"⧡"    =>  Ts.INCREASES_AS
"⧣"    =>  Ts.EQUALS_SIGN_AND_SLANTED_PARALLEL
"⧤"    =>  Ts.EQUALS_SIGN_AND_SLANTED_PARALLEL_WITH_TILDE_ABOVE
"⧥"    =>  Ts.IDENTICAL_TO_AND_SLANTED_PARALLEL
"⩦"    =>  Ts.EQUALS_SIGN_WITH_DOT_BELOW
"⩧"    =>  Ts.IDENTICAL_WITH_DOT_ABOVE
"⩪"    =>  Ts.TILDE_OPERATOR_WITH_DOT_ABOVE
"⩫"    =>  Ts.TILDE_OPERATOR_WITH_RISING_DOTS
"⩬"    =>  Ts.SIMILAR_MINUS_SIMILAR
"⩭"    =>  Ts.CONGRUENT_WITH_DOT_ABOVE
"⩮"    =>  Ts.EQUALS_WITH_ASTERISK
"⩯"    =>  Ts.ALMOST_EQUAL_TO_WITH_CIRCUMFLEX_ACCENT
"⩰"    =>  Ts.APPROXIMATELY_EQUAL_OR_EQUAL_TO
"⩱"    =>  Ts.EQUALS_SIGN_ABOVE_PLUS_SIGN
"⩲"    =>  Ts.PLUS_SIGN_ABOVE_EQUALS_SIGN
"⩳"    =>  Ts.EQUALS_SIGN_ABOVE_TILDE_OPERATOR
"⩴"    =>  Ts.DOUBLE_COLON_EQUAL
"⩵"    =>  Ts.TWO_CONSECUTIVE_EQUALS_SIGNS
"⩶"    =>  Ts.THREE_CONSECUTIVE_EQUALS_SIGNS
"⩷"    =>  Ts.EQUALS_SIGN_WITH_TWO_DOTS_ABOVE_AND_TWO_DOTS_BELOW
"⩸"    =>  Ts.EQUIVALENT_WITH_FOUR_DOTS_ABOVE
"⩹"    =>  Ts.LESS_THAN_WITH_CIRCLE_INSIDE
"⩺"    =>  Ts.GREATER_THAN_WITH_CIRCLE_INSIDE
"⩻"    =>  Ts.LESS_THAN_WITH_QUESTION_MARK_ABOVE
"⩼"    =>  Ts.GREATER_THAN_WITH_QUESTION_MARK_ABOVE
"⩽"    =>  Ts.LESS_THAN_OR_SLANTED_EQUAL_TO
"⩾"    =>  Ts.GREATER_THAN_OR_SLANTED_EQUAL_TO
"⩿"    =>  Ts.LESS_THAN_OR_SLANTED_EQUAL_TO_WITH_DOT_INSIDE
"⪀"    =>  Ts.GREATER_THAN_OR_SLANTED_EQUAL_TO_WITH_DOT_INSIDE
"⪁"    =>  Ts.LESS_THAN_OR_SLANTED_EQUAL_TO_WITH_DOT_ABOVE
"⪂"    =>  Ts.GREATER_THAN_OR_SLANTED_EQUAL_TO_WITH_DOT_ABOVE
"⪃"    =>  Ts.LESS_THAN_OR_SLANTED_EQUAL_TO_WITH_DOT_ABOVE_RIGHT
"⪄"    =>  Ts.GREATER_THAN_OR_SLANTED_EQUAL_TO_WITH_DOT_ABOVE_LEFT
"⪅"    =>  Ts.LESS_THAN_OR_APPROXIMATE
"⪆"    =>  Ts.GREATER_THAN_OR_APPROXIMATE
"⪇"    =>  Ts.LESS_THAN_AND_SINGLE_LINE_NOT_EQUAL_TO
"⪈"    =>  Ts.GREATER_THAN_AND_SINGLE_LINE_NOT_EQUAL_TO
"⪉"    =>  Ts.LESS_THAN_AND_NOT_APPROXIMATE
"⪊"    =>  Ts.GREATER_THAN_AND_NOT_APPROXIMATE
"⪋"    =>  Ts.LESS_THAN_ABOVE_DOUBLE_LINE_EQUAL_ABOVE_GREATER_THAN
"⪌"    =>  Ts.GREATER_THAN_ABOVE_DOUBLE_LINE_EQUAL_ABOVE_LESS_THAN
"⪍"    =>  Ts.LESS_THAN_ABOVE_SIMILAR_OR_EQUAL
"⪎"    =>  Ts.GREATER_THAN_ABOVE_SIMILAR_OR_EQUAL
"⪏"    =>  Ts.LESS_THAN_ABOVE_SIMILAR_ABOVE_GREATER_THAN
"⪐"    =>  Ts.GREATER_THAN_ABOVE_SIMILAR_ABOVE_LESS_THAN
"⪑"    =>  Ts.LESS_THAN_ABOVE_GREATER_THAN_ABOVE_DOUBLE_LINE_EQUAL
"⪒"    =>  Ts.GREATER_THAN_ABOVE_LESS_THAN_ABOVE_DOUBLE_LINE_EQUAL
"⪓"    =>  Ts.LESS_THAN_ABOVE_SLANTED_EQUAL_ABOVE_GREATER_THAN_ABOVE_SLANTED_EQUAL
"⪔"    =>  Ts.GREATER_THAN_ABOVE_SLANTED_EQUAL_ABOVE_LESS_THAN_ABOVE_SLANTED_EQUAL
"⪕"    =>  Ts.SLANTED_EQUAL_TO_OR_LESS_THAN
"⪖"    =>  Ts.SLANTED_EQUAL_TO_OR_GREATER_THAN
"⪗"    =>  Ts.SLANTED_EQUAL_TO_OR_LESS_THAN_WITH_DOT_INSIDE
"⪘"    =>  Ts.SLANTED_EQUAL_TO_OR_GREATER_THAN_WITH_DOT_INSIDE
"⪙"    =>  Ts.DOUBLE_LINE_EQUAL_TO_OR_LESS_THAN
"⪚"    =>  Ts.DOUBLE_LINE_EQUAL_TO_OR_GREATER_THAN
"⪛"    =>  Ts.DOUBLE_LINE_SLANTED_EQUAL_TO_OR_LESS_THAN
"⪜"    =>  Ts.DOUBLE_LINE_SLANTED_EQUAL_TO_OR_GREATER_THAN
"⪝"    =>  Ts.SIMILAR_OR_LESS_THAN
"⪞"    =>  Ts.SIMILAR_OR_GREATER_THAN
"⪟"    =>  Ts.SIMILAR_ABOVE_LESS_THAN_ABOVE_EQUALS_SIGN
"⪠"    =>  Ts.SIMILAR_ABOVE_GREATER_THAN_ABOVE_EQUALS_SIGN
"⪡"    =>  Ts.DOUBLE_NESTED_LESS_THAN
"⪢"    =>  Ts.DOUBLE_NESTED_GREATER_THAN
"⪣"    =>  Ts.DOUBLE_NESTED_LESS_THAN_WITH_UNDERBAR
"⪤"    =>  Ts.GREATER_THAN_OVERLAPPING_LESS_THAN
"⪥"    =>  Ts.GREATER_THAN_BESIDE_LESS_THAN
"⪦"    =>  Ts.LESS_THAN_CLOSED_BY_CURVE
"⪧"    =>  Ts.GREATER_THAN_CLOSED_BY_CURVE
"⪨"    =>  Ts.LESS_THAN_CLOSED_BY_CURVE_ABOVE_SLANTED_EQUAL
"⪩"    =>  Ts.GREATER_THAN_CLOSED_BY_CURVE_ABOVE_SLANTED_EQUAL
"⪪"    =>  Ts.SMALLER_THAN
"⪫"    =>  Ts.LARGER_THAN
"⪬"    =>  Ts.SMALLER_THAN_OR_EQUAL_TO
"⪭"    =>  Ts.LARGER_THAN_OR_EQUAL_TO
"⪮"    =>  Ts.EQUALS_SIGN_WITH_BUMPY_ABOVE
"⪯"    =>  Ts.PRECEDES_ABOVE_SINGLE_LINE_EQUALS_SIGN
"⪰"    =>  Ts.SUCCEEDS_ABOVE_SINGLE_LINE_EQUALS_SIGN
"⪱"    =>  Ts.PRECEDES_ABOVE_SINGLE_LINE_NOT_EQUAL_TO
"⪲"    =>  Ts.SUCCEEDS_ABOVE_SINGLE_LINE_NOT_EQUAL_TO
"⪳"    =>  Ts.PRECEDES_ABOVE_EQUALS_SIGN
"⪴"    =>  Ts.SUCCEEDS_ABOVE_EQUALS_SIGN
"⪵"    =>  Ts.PRECEDES_ABOVE_NOT_EQUAL_TO
"⪶"    =>  Ts.SUCCEEDS_ABOVE_NOT_EQUAL_TO
"⪷"    =>  Ts.PRECEDES_ABOVE_ALMOST_EQUAL_TO
"⪸"    =>  Ts.SUCCEEDS_ABOVE_ALMOST_EQUAL_TO
"⪹"    =>  Ts.PRECEDES_ABOVE_NOT_ALMOST_EQUAL_TO
"⪺"    =>  Ts.SUCCEEDS_ABOVE_NOT_ALMOST_EQUAL_TO
"⪻"    =>  Ts.DOUBLE_PRECEDES
"⪼"    =>  Ts.DOUBLE_SUCCEEDS
"⪽"    =>  Ts.SUBSET_WITH_DOT
"⪾"    =>  Ts.SUPERSET_WITH_DOT
"⪿"    =>  Ts.SUBSET_WITH_PLUS_SIGN_BELOW
"⫀"    =>  Ts.SUPERSET_WITH_PLUS_SIGN_BELOW
"⫁"    =>  Ts.SUBSET_WITH_MULTIPLICATION_SIGN_BELOW
"⫂"    =>  Ts.SUPERSET_WITH_MULTIPLICATION_SIGN_BELOW
"⫃"    =>  Ts.SUBSET_OF_OR_EQUAL_TO_WITH_DOT_ABOVE
"⫄"    =>  Ts.SUPERSET_OF_OR_EQUAL_TO_WITH_DOT_ABOVE
"⫅"    =>  Ts.SUBSET_OF_ABOVE_EQUALS_SIGN
"⫆"    =>  Ts.SUPERSET_OF_ABOVE_EQUALS_SIGN
"⫇"    =>  Ts.SUBSET_OF_ABOVE_TILDE_OPERATOR
"⫈"    =>  Ts.SUPERSET_OF_ABOVE_TILDE_OPERATOR
"⫉"    =>  Ts.SUBSET_OF_ABOVE_ALMOST_EQUAL_TO
"⫊"    =>  Ts.SUPERSET_OF_ABOVE_ALMOST_EQUAL_TO
"⫋"    =>  Ts.SUBSET_OF_ABOVE_NOT_EQUAL_TO
"⫌"    =>  Ts.SUPERSET_OF_ABOVE_NOT_EQUAL_TO
"⫍"    =>  Ts.SQUARE_LEFT_OPEN_BOX_OPERATOR
"⫎"    =>  Ts.SQUARE_RIGHT_OPEN_BOX_OPERATOR
"⫏"    =>  Ts.CLOSED_SUBSET
"⫐"    =>  Ts.CLOSED_SUPERSET
"⫑"    =>  Ts.CLOSED_SUBSET_OR_EQUAL_TO
"⫒"    =>  Ts.CLOSED_SUPERSET_OR_EQUAL_TO
"⫓"    =>  Ts.SUBSET_ABOVE_SUPERSET
"⫔"    =>  Ts.SUPERSET_ABOVE_SUBSET
"⫕"    =>  Ts.SUBSET_ABOVE_SUBSET
"⫖"    =>  Ts.SUPERSET_ABOVE_SUPERSET
"⫗"    =>  Ts.SUPERSET_BESIDE_SUBSET
"⫘"    =>  Ts.SUPERSET_BESIDE_AND_JOINED_BY_DASH_WITH_SUBSET
"⫙"    =>  Ts.ELEMENT_OF_OPENING_DOWNWARDS
"⫷"    =>  Ts.TRIPLE_NESTED_LESS_THAN
"⫸"    =>  Ts.TRIPLE_NESTED_GREATER_THAN
"⫹"    =>  Ts.DOUBLE_LINE_SLANTED_LESS_THAN_OR_EQUAL_TO
"⫺"    =>  Ts.DOUBLE_LINE_SLANTED_GREATER_THAN_OR_EQUAL_TO
"⊢"    =>  Ts.RIGHT_TACK
"⊣"    =>  Ts.LEFT_TACK
"⟂"    =>  Ts.PERP
"END_COMPARISON" => Ts.end_comparison

# Level 7
"BEGIN_PIPE"  => Ts.begin_pipe
"<|"  =>  Ts.LPIPE
"|>"  =>  Ts.RPIPE
"END_PIPE"    => Ts.end_pipe

# Level 8
"BEGIN_COLON"  => Ts.begin_colon
":"   =>  Ts.COLON
".."  =>  Ts.DDOT
"…"   =>  Ts.LDOTS
"⁝"   =>  Ts.TRICOLON
"⋮"   =>  Ts.VDOTS
"⋱"   =>  Ts.DDOTS
"⋰"   =>  Ts.ADOTS
"⋯"   =>  Ts.CDOTS
"END_COLON"    => Ts.end_colon

# Level 9
"BEGIN_PLUS"  => Ts.begin_plus
"\$"   =>  Ts.EX_OR
"+"   =>  Ts.PLUS
"-"   =>  Ts.MINUS
"++"  =>  Ts.PLUSPLUS
"⊕"   =>  Ts.CIRCLED_PLUS
"⊖"   =>  Ts.CIRCLED_MINUS
"⊞"   =>  Ts.SQUARED_PLUS
"⊟"   =>  Ts.SQUARED_MINUS
"|"   =>  Ts.OR
"∪"   =>  Ts.UNION
"∨"   =>  Ts.LOGICAL_OR
"⊔"   =>  Ts.SQUARE_CUP
"±"   =>  Ts.PLUS_MINUS_SIGN
"∓"   =>  Ts.MINUS_OR_PLUS_SIGN
"∔"   =>  Ts.DOT_PLUS
"∸"   =>  Ts.DOT_MINUS
"≂"   =>  Ts.MINUS_TILDE
"≏"   =>  Ts.DIFFERENCE_BETWEEN
"⊎"   =>  Ts.MULTISET_UNION
"⊻"   =>  Ts.XOR
"⊽"   =>  Ts.NOR
"⋎"   =>  Ts.CURLY_LOGICAL_OR
"⋓"   =>  Ts.DOUBLE_UNION
"⧺"   =>  Ts.DOUBLE_PLUS
"⧻"   =>  Ts.TRIPLE_PLUS
"⨈"   =>  Ts.TWO_LOGICAL_OR_OPERATOR
"⨢"   =>  Ts.PLUS_SIGN_WITH_SMALL_CIRCLE_ABOVE
"⨣"   =>  Ts.PLUS_SIGN_WITH_CIRCUMFLEX_ACCENT_ABOVE
"⨤"   =>  Ts.PLUS_SIGN_WITH_TILDE_ABOVE
"⨥"   =>  Ts.PLUS_SIGN_WITH_DOT_BELOW
"⨦"   =>  Ts.PLUS_SIGN_WITH_TILDE_BELOW
"⨧"   =>  Ts.PLUS_SIGN_WITH_SUBSCRIPT_TWO
"⨨"   =>  Ts.PLUS_SIGN_WITH_BLACK_TRIANGLE
"⨩"   =>  Ts.MINUS_SIGN_WITH_COMMA_ABOVE
"⨪"   =>  Ts.MINUS_SIGN_WITH_DOT_BELOW
"⨫"   =>  Ts.MINUS_SIGN_WITH_FALLING_DOTS
"⨬"   =>  Ts.MINUS_SIGN_WITH_RISING_DOTS
"⨭"   =>  Ts.PLUS_SIGN_IN_LEFT_HALF_CIRCLE
"⨮"   =>  Ts.PLUS_SIGN_IN_RIGHT_HALF_CIRCLE
"⨹"   =>  Ts.PLUS_SIGN_IN_TRIANGLE
"⨺"   =>  Ts.MINUS_SIGN_IN_TRIANGLE
"⩁"   =>  Ts.UNION_WITH_MINUS_SIGN
"⩂"   =>  Ts.UNION_WITH_OVERBAR
"⩅"   =>  Ts.UNION_WITH_LOGICAL_OR
"⩊"   =>  Ts.UNION_BESIDE_AND_JOINED_WITH_UNION
"⩌"   =>  Ts.CLOSED_UNION_WITH_SERIFS
"⩏"   =>  Ts.DOUBLE_SQUARE_UNION
"⩐"   =>  Ts.CLOSED_UNION_WITH_SERIFS_AND_SMASH_PRODUCT
"⩒"   =>  Ts.LOGICAL_OR_WITH_DOT_ABOVE
"⩔"   =>  Ts.DOUBLE_LOGICAL_OR
"⩖"   =>  Ts.TWO_INTERSECTING_LOGICAL_OR
"⩗"   =>  Ts.SLOPING_LARGE_OR
"⩛"   =>  Ts.LOGICAL_OR_WITH_MIDDLE_STEM
"⩝"   =>  Ts.LOGICAL_OR_WITH_HORIZONTAL_DASH
"⩡"   =>  Ts.SMALL_VEE_WITH_UNDERBAR
"⩢"   =>  Ts.LOGICAL_OR_WITH_DOUBLE_OVERBAR
"⩣"   =>  Ts.LOGICAL_OR_WITH_DOUBLE_UNDERBAR
"¦"   =>  Ts.BROKEN_BAR
"END_PLUS"    => Ts.end_plus

# Level 10
"BEGIN_BITSHIFTS"  => Ts.begin_bitshifts
"<<"   =>  Ts.LBITSHIFT
">>"   =>  Ts.RBITSHIFT
">>>"  =>  Ts.UNSIGNED_BITSHIFT
"END_BITSHIFTS"    => Ts.end_bitshifts

# Level 11
"BEGIN_TIMES"  => Ts.begin_times
"*"   =>  Ts.STAR
"/"   =>  Ts.FWD_SLASH
"÷"   =>  Ts.DIVISION_SIGN
"%"   =>  Ts.REM
"⋅"   =>  Ts.UNICODE_DOT
"∘"   =>  Ts.RING_OPERATOR
"×"   =>  Ts.MULTIPLICATION_SIGN
"\\"  =>  Ts.BACKSLASH
"&"   =>  Ts.AND
"∩"   =>  Ts.INTERSECTION
"∧"   =>  Ts.LOGICAL_AND
"⊗"   =>  Ts.CIRCLED_TIMES
"⊘"   =>  Ts.CIRCLED_DIVISION_SLASH
"⊙"   =>  Ts.CIRCLED_DOT_OPERATOR
"⊚"   =>  Ts.CIRCLED_RING_OPERATOR
"⊛"   =>  Ts.CIRCLED_ASTERISK_OPERATOR
"⊠"   =>  Ts.SQUARED_TIMES
"⊡"   =>  Ts.SQUARED_DOT_OPERATOR
"⊓"   =>  Ts.SQUARE_CAP
"∗"   =>  Ts.ASTERISK_OPERATOR
"∙"   =>  Ts.BULLET_OPERATOR
"∤"   =>  Ts.DOES_NOT_DIVIDE
"⅋"   =>  Ts.TURNED_AMPERSAND
"≀"   =>  Ts.WREATH_PRODUCT
"⊼"   =>  Ts.NAND
"⋄"   =>  Ts.DIAMOND_OPERATOR
"⋆"   =>  Ts.STAR_OPERATOR
"⋇"   =>  Ts.DIVISION_TIMES
"⋉"   =>  Ts.LEFT_NORMAL_FACTOR_SEMIDIRECT_PRODUCT
"⋊"   =>  Ts.RIGHT_NORMAL_FACTOR_SEMIDIRECT_PRODUCT
"⋋"   =>  Ts.LEFT_SEMIDIRECT_PRODUCT
"⋌"   =>  Ts.RIGHT_SEMIDIRECT_PRODUCT
"⋏"   =>  Ts.CURLY_LOGICAL_AND
"⋒"   =>  Ts.DOUBLE_INTERSECTION
"⟑"   =>  Ts.AND_WITH_DOT
"⦸"   =>  Ts.CIRCLED_REVERSE_SOLIDUS
"⦼"   =>  Ts.CIRCLED_ANTICLOCKWISE_ROTATED_DIVISION_SIGN
"⦾"   =>  Ts.CIRCLED_WHITE_BULLET
"⦿"   =>  Ts.CIRCLED_BULLET
"⧶"   =>  Ts.SOLIDUS_WITH_OVERBAR
"⧷"   =>  Ts.REVERSE_SOLIDUS_WITH_HORIZONTAL_STROKE
"⨇"   =>  Ts.TWO_LOGICAL_AND_OPERATOR
"⨰"   =>  Ts.MULTIPLICATION_SIGN_WITH_DOT_ABOVE
"⨱"   =>  Ts.MULTIPLICATION_SIGN_WITH_UNDERBAR
"⨲"   =>  Ts.SEMIDIRECT_PRODUCT_WITH_BOTTOM_CLOSED
"⨳"   =>  Ts.SMASH_PRODUCT
"⨴"   =>  Ts.MULTIPLICATION_SIGN_IN_LEFT_HALF_CIRCLE
"⨵"   =>  Ts.MULTIPLICATION_SIGN_IN_RIGHT_HALF_CIRCLE
"⨶"   =>  Ts.CIRCLED_MULTIPLICATION_SIGN_WITH_CIRCUMFLEX_ACCENT
"⨷"   =>  Ts.MULTIPLICATION_SIGN_IN_DOUBLE_CIRCLE
"⨸"   =>  Ts.CIRCLED_DIVISION_SIGN
"⨻"   =>  Ts.MULTIPLICATION_SIGN_IN_TRIANGLE
"⨼"   =>  Ts.INTERIOR_PRODUCT
"⨽"   =>  Ts.RIGHTHAND_INTERIOR_PRODUCT
"⩀"   =>  Ts.INTERSECTION_WITH_DOT
"⩃"   =>  Ts.INTERSECTION_WITH_OVERBAR
"⩄"   =>  Ts.INTERSECTION_WITH_LOGICAL_AND
"⩋"   =>  Ts.INTERSECTION_BESIDE_AND_JOINED_WITH_INTERSECTION
"⩍"   =>  Ts.CLOSED_INTERSECTION_WITH_SERIFS
"⩎"   =>  Ts.DOUBLE_SQUARE_INTERSECTION
"⩑"   =>  Ts.LOGICAL_AND_WITH_DOT_ABOVE
"⩓"   =>  Ts.DOUBLE_LOGICAL_AND
"⩕"   =>  Ts.TWO_INTERSECTING_LOGICAL_AND
"⩘"   =>  Ts.SLOPING_LARGE_AND
"⩚"   =>  Ts.LOGICAL_AND_WITH_MIDDLE_STEM
"⩜"   =>  Ts.LOGICAL_AND_WITH_HORIZONTAL_DASH
"⩞"   =>  Ts.LOGICAL_AND_WITH_DOUBLE_OVERBAR
"⩟"   =>  Ts.LOGICAL_AND_WITH_UNDERBAR
"⩠"   =>  Ts.LOGICAL_AND_WITH_DOUBLE_UNDERBAR
"⫛"   =>  Ts.TRANSVERSAL_INTERSECTION
"⊍"   =>  Ts.MULTISET_MULTIPLICATION
"▷"   =>  Ts.WHITE_RIGHT_POINTING_TRIANGLE
"⨝"   =>  Ts.JOIN
"⟕"   =>  Ts.LEFT_OUTER_JOIN
"⟖"   =>  Ts.RIGHT_OUTER_JOIN
"⟗"   =>  Ts.FULL_OUTER_JOIN
"⌿"   =>  Ts.NOT_SLASH
"⨟"   =>  Ts.BB_SEMI
"END_TIMES"    => Ts.end_times

# Level 12
"BEGIN_RATIONAL"  => Ts.begin_rational
"//"  =>  Ts.FWDFWD_SLASH
"END_RATIONAL"    => Ts.end_rational

# Level 13
"BEGIN_POWER"  => Ts.begin_power
"^"  =>  Ts.CIRCUMFLEX_ACCENT
"↑"  =>  Ts.UPWARDS_ARROW
"↓"  =>  Ts.DOWNWARDS_ARROW
"⇵"  =>  Ts.DOWNWARDS_ARROW_LEFTWARDS_OF_UPWARDS_ARROW
"⟰"  =>  Ts.UPWARDS_QUADRUPLE_ARROW
"⟱"  =>  Ts.DOWNWARDS_QUADRUPLE_ARROW
"⤈"  =>  Ts.DOWNWARDS_ARROW_WITH_HORIZONTAL_STROKE
"⤉"  =>  Ts.UPWARDS_ARROW_WITH_HORIZONTAL_STROKE
"⤊"  =>  Ts.UPWARDS_TRIPLE_ARROW
"⤋"  =>  Ts.DOWNWARDS_TRIPLE_ARROW
"⤒"  =>  Ts.UPWARDS_ARROW_TO_BAR
"⤓"  =>  Ts.DOWNWARDS_ARROW_TO_BAR
"⥉"  =>  Ts.UPWARDS_TWO_HEADED_ARROW_FROM_SMALL_CIRCLE
"⥌"  =>  Ts.UP_BARB_RIGHT_DOWN_BARB_LEFT_HARPOON
"⥍"  =>  Ts.UP_BARB_LEFT_DOWN_BARB_RIGHT_HARPOON
"⥏"  =>  Ts.UP_BARB_RIGHT_DOWN_BARB_RIGHT_HARPOON
"⥑"  =>  Ts.UP_BARB_LEFT_DOWN_BARB_LEFT_HARPOON
"⥔"  =>  Ts.UPWARDS_HARPOON_WITH_BARB_RIGHT_TO_BAR
"⥕"  =>  Ts.DOWNWARDS_HARPOON_WITH_BARB_RIGHT_TO_BAR
"⥘"  =>  Ts.UPWARDS_HARPOON_WITH_BARB_LEFT_TO_BAR
"⥙"  =>  Ts.DOWNWARDS_HARPOON_WITH_BARB_LEFT_TO_BAR
"⥜"  =>  Ts.UPWARDS_HARPOON_WITH_BARB_RIGHT_FROM_BAR
"⥝"  =>  Ts.DOWNWARDS_HARPOON_WITH_BARB_RIGHT_FROM_BAR
"⥠"  =>  Ts.UPWARDS_HARPOON_WITH_BARB_LEFT_FROM_BAR
"⥡"  =>  Ts.DOWNWARDS_HARPOON_WITH_BARB_LEFT_FROM_BAR
"⥣"  =>  Ts.UPWARDS_HARPOON_WITH_BARB_LEFT_BESIDE_UPWARDS_HARPOON_WITH_BARB_RIGHT
"⥥"  =>  Ts.DOWNWARDS_HARPOON_WITH_BARB_LEFT_BESIDE_DOWNWARDS_HARPOON_WITH_BARB_RIGHT
"⥮"  =>  Ts.UPWARDS_HARPOON_WITH_BARB_LEFT_BESIDE_DOWNWARDS_HARPOON_WITH_BARB_RIGHT
"⥯"  =>  Ts.DOWNWARDS_HARPOON_WITH_BARB_LEFT_BESIDE_UPWARDS_HARPOON_WITH_BARB_RIGHT
"￪"  =>  Ts.HALFWIDTH_UPWARDS_ARROW
"￬"  =>  Ts.HALFWIDTH_DOWNWARDS_ARROW
"END_POWER"    => Ts.end_power

# Level 14
"BEGIN_DECL"  => Ts.begin_decl
"::"  =>  Ts.DECLARATION
"END_DECL"    => Ts.end_decl

# Level 15
"BEGIN_WHERE"  => Ts.begin_where
"where"  =>  Ts.WHERE
"END_WHERE"    => Ts.end_where

# Level 16
"BEGIN_DOT"  => Ts.begin_dot
"."  =>  Ts.DOT
"END_DOT"    => Ts.end_dot

"!"   =>  Ts.NOT
"'"   =>  Ts.PRIME
".'"  =>  Ts.TRANSPOSE
"->"  =>  Ts.ANON_FUNC

"BEGIN_UNICODE_OPS" => Ts.begin_unicode_ops
"¬"  =>  Ts.NOT_SIGN
"√"  =>  Ts.SQUARE_ROOT
"∛"  =>  Ts.CUBE_ROOT
"∜"  =>  Ts.QUAD_ROOT
"END_UNICODE_OPS"   => Ts.end_unicode_ops

"END_OPS" => Ts.end_ops

# Cute synonyms (too cute?
# " "      => Ts.WHITESPACE
# "\n"     => Ts.NEWLINE_WS

"BEGIN_INVISIBLE_TOKENS" => Ts.begin_invisible_tokens
"TOMBSTONE"          =>  Ts.TOMBSTONE
"core_@doc"          =>  Ts.CORE_AT_DOC
"core_@cmd"          =>  Ts.CORE_AT_CMD
"core_@int128_str"   =>  Ts.CORE_AT_INT128_STR
"core_@uint128_str"  =>  Ts.CORE_AT_UINT128_STR
"core_@big_str"      =>  Ts.CORE_AT_BIG_STR
"END_INVISIBLE_TOKENS"   => Ts.end_invisible_tokens

# Our custom syntax tokens
"BEGIN_SYNTAX_KINDS" => Ts.begin_syntax_kinds
"block"                =>  Ts.BLOCK
"call"                 =>  Ts.CALL
"comparison"           =>  Ts.COMPARISON
"curly"                =>  Ts.CURLY
"string"               =>  Ts.STRING_INTERP
"macrocall"            =>  Ts.MACROCALL
"toplevel"             =>  Ts.TOPLEVEL
"tuple"                =>  Ts.TUPLE
"ref"                  =>  Ts.REF
"vect"                 =>  Ts.VECT
"braces"               =>  Ts.BRACES
"bracescat"            =>  Ts.BRACESCAT
"hcat"                 =>  Ts.HCAT
"vcat"                 =>  Ts.VCAT
"ncat"                 =>  Ts.NCAT
"typed_hcat"           =>  Ts.TYPED_HCAT
"typed_vcat"           =>  Ts.TYPED_VCAT
"typed_ncat"           =>  Ts.TYPED_NCAT
"generator"            =>  Ts.GENERATOR
"flatten"              =>  Ts.FLATTEN
"comprehension"        =>  Ts.COMPREHENSION
"typed_comprehension"  =>  Ts.TYPED_COMPREHENSION
"END_SYNTAX_KINDS" => Ts.end_syntax_kinds
])
end

# Mapping from kinds to their unique string representation, if it exists
const _kind_to_str_unique =
    Dict{Kind,String}(k=>string(s) for (k,s) in TzTokens.UNICODE_OPS_REVERSE)
for c in "([{}])@,;"
    _kind_to_str_unique[_str_to_kind[string(c)]] = string(c)
end
for kw in split("""abstract baremodule begin break catch const
                   continue do else elseif end export finally for
                   function global if import let local
                   macro module mutable new outer primitive quote
                   return struct try type using while

                   block call comparison curly string macrocall
                   toplevel tuple ref vect braces bracescat hcat
                   vcat ncat typed_hcat typed_vcat typed_ncat generator
                   flatten comprehension typed_comprehension
                   """)
    _kind_to_str_unique[_str_to_kind[kw]] = kw
end