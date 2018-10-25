" ------------------------------------------------------------------------------
" File: comfy.vim
" Description: 'Comfy' color scheme file
" Author: Jayden Chan <jaydencn7@gmail.com>
" Based on theme by ThemeCreator (https://github.com/mswift42/themecreator)
" ------------------------------------------------------------------------------

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "comfy"

" Define palette
let s:bg       = "#343233" " Grey#343233
let s:fg       = "#EFDAB9" " Tan
let s:fg2      = s:fg      " Tan
let s:fg3      = "#c9b79b" " Unknown
let s:fg4      = "#b6a68d" " Unknown
let s:bg2      = s:bg      " Grey (fg)
let s:bg3      = "#4c494a" " Light Grey
let s:bg4      = "#656364" " Ligher Grey
let s:keyword  = "#78AF9F" " Teal
let s:builtin  = "#659CC8" " Blue
let s:const    = "#af78a4" " Purple
let s:comment  = "#808080" " Grey
let s:func     = "#84cb88" " Green
let s:str      = "#EDBE52" " Yellow
let s:type     = "#659CC8" " Blue
let s:var      = "#EFDAB9" " Tan
let s:warning  = "#C13F21" " Red
let s:warning2 = "#D36E2D" " Orange

exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Visual guibg='s:bg4
exe 'hi Cursor guifg='s:bg' guibg='s:fg
exe 'hi CursorLine  guibg='s:bg3
exe 'hi CursorLineNr guibg='s:bg' guifg='s:str
exe 'hi CursorColumn  guibg='s:bg2
exe 'hi ColorColumn  guibg='s:bg2
exe 'hi LineNr guifg='s:bg4' guibg='s:bg2
exe 'hi VertSplit guifg='s:bg' guibg='s:bg3
exe 'hi MatchParen guibg=NONE guifg='s:type
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg3' gui=bold'
exe 'hi StatusLineNC guibg='s:bg3' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel  guibg='s:bg3
exe 'hi IncSearch guifg='s:fg' guibg='s:bg
exe 'hi Search   gui=underline'
exe 'hi Directory guifg='s:const
exe 'hi Folded guifg='s:fg4' guibg='s:bg

exe 'hi Boolean guifg='s:const
exe 'hi Character guifg='s:const
exe 'hi Comment guifg='s:comment' gui=italic'
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Define guifg='s:keyword
exe 'hi DiffAdd guifg=#000000 guibg=#ddffdd gui=bold'
exe 'hi DiffDelete guifg=#ff0000'
exe 'hi DiffChange  guibg='s:bg2
exe 'hi DiffText guifg=#000000 guibg=#ddddff gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:func
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4' guibg='s:bg2
exe 'hi Number guifg='s:const
exe 'hi Operater guifg='s:keyword
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:const' gui=bold'
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Statement guifg='s:type
exe 'hi StorageClass guifg='s:type
exe 'hi String guifg='s:str
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg' guibg=NONE gui=bold'
exe 'hi Type guifg='s:type
exe 'hi Underlined   gui=underline'

" Ruby
exe 'hi rubyAttribute guifg='s:builtin
exe 'hi rubyLocalVariableOrMethod guifg='s:var
exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyNumber guifg='s:const

" Go
exe 'hi goBuiltins guifg='s:builtin
exe 'hi goDirective guifg='s:keyword
exe 'hi goConstants guifg='s:const
exe 'hi goDeclaration guifg='s:func
exe 'hi goDeclType guifg='s:type

" GitGutter
exe 'hi GitGutterAdd guifg='s:func
exe 'hi GitGutterChange guifg='s:str
exe 'hi GitGutterDelete guifg='s:warning
exe 'hi GitGutterChangeDelete guifg='s:warning2

" Java
exe 'hi javaAnnotation guifg='s:keyword
exe 'hi javaDocTags guifg='s:keyword
exe 'hi javaCommentTitle guifg='s:comment' gui=italic'
exe 'hi javaParen guifg='s:fg
exe 'hi javaParen1 guifg='s:fg
exe 'hi javaParen2 guifg='s:fg
exe 'hi javaParen3 guifg='s:fg
exe 'hi javaParen4 guifg='s:fg
exe 'hi javaParen5 guifg='s:fg
exe 'hi javaOperator guifg='s:builtin
exe 'hi javaVarArg guifg='s:builtin

" Javascript
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var
exe 'hi javaScriptBraces guifg='s:fg
exe 'hi javaScriptIdentifier guifg='s:var
exe 'hi javaScriptMember guifg='s:var
exe 'hi javaScriptNumber guifg='s:var
exe 'hi javaScriptNull guifg='s:keyword
exe 'hi javaScriptParens guifg='s:fg
exe 'hi jsDocTags guifg='s:keyword

" YAJS
exe 'hi javascriptImport guifg='s:builtin
exe 'hi javascriptExport guifg='s:builtin
exe 'hi javascriptClassKeyword guifg='s:keyword
exe 'hi javascriptClassExtends guifg='s:keyword
exe 'hi javascriptDefault guifg='s:keyword
exe 'hi javascriptClassName guifg='s:builtin
exe 'hi javascriptClassSuperName guifg='s:builtin
exe 'hi javascriptGlobal guifg='s:keyword
exe 'hi javascriptEndColons guifg='s:fg
exe 'hi javascriptFuncArg guifg='s:fg
exe 'hi javascriptGlobalMethod guifg='s:fg
exe 'hi javascriptNodeGlobal guifg='s:fg
exe 'hi javascriptBOMWindowProp guifg='s:fg
exe 'hi javascriptArrayMethod guifg='s:fg
exe 'hi javascriptArrayStaticMethod guifg='s:fg
exe 'hi javascriptCacheMethod guifg='s:fg
exe 'hi javascriptDateMethod guifg='s:fg
exe 'hi javascriptMathStaticMethod guifg='s:fg
exe 'hi javascriptURLUtilsProp guifg='s:fg
exe 'hi javascriptBOMNavigatorProp guifg='s:fg
exe 'hi javascriptDOMDocMethod guifg='s:fg
exe 'hi javascriptDOMDocProp guifg='s:fg
exe 'hi javascriptBOMLocationMethod guifg='s:fg
exe 'hi javascriptBOMWindowMethod guifg='s:fg
exe 'hi javascriptStringMethod guifg='s:fg
exe 'hi javascriptVariable guifg='s:var
exe 'hi javascriptIdentifier guifg='s:var
exe 'hi javascriptClassSuper guifg='s:var
exe 'hi javascriptFuncKeyword guifg='s:keyword
exe 'hi javascriptAsyncFunc guifg='s:func
exe 'hi javascriptClassStatic guifg='s:keyword
exe 'hi javascriptOperator guifg='s:fg
exe 'hi javascriptForOperator guifg='s:fg
exe 'hi javascriptYield guifg='s:fg
exe 'hi javascriptExceptions guifg='s:warning2
exe 'hi javascriptMessage guifg='s:warning2
exe 'hi javascriptTemplateSB guifg='s:keyword
exe 'hi javascriptTemplateSubstitution guifg='s:fg
exe 'hi javascriptLabel guifg='s:fg
exe 'hi javascriptObjectLabel guifg='s:fg
exe 'hi javascriptPropertyName guifg='s:fg
exe 'hi javascriptLogicSymbols guifg='s:fg
exe 'hi javascriptArrowFunc guifg='s:func
exe 'hi javascriptDocParamName guifg='s:fg
exe 'hi javascriptDocTags guifg='s:fg
exe 'hi javascriptDocNotation guifg='s:fg
exe 'hi javascriptDocParamType guifg='s:fg
exe 'hi javascriptDocNamedParamType guifg='s:fg
exe 'hi javascriptBrackets guifg='s:fg
exe 'hi javascriptDOMElemAttrs guifg='s:fg
exe 'hi javascriptDOMEventMethod guifg='s:fg
exe 'hi javascriptDOMNodeMethod guifg='s:fg
exe 'hi javascriptDOMStorageMethod guifg='s:fg
exe 'hi javascriptHeadersMethod guifg='s:fg
exe 'hi javascriptAsyncFuncKeyword guifg='s:warning
exe 'hi javascriptAwaitFuncKeyword guifg='s:warning

" HTML
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi markdownItalic guifg='s:fg' gui=italic'
exe 'hi markdownH1 guifg='s:func
exe 'hi markdownH2 guifg='s:func
exe 'hi markdownH3 guifg='s:func
exe 'hi markdownH4 guifg='s:func
exe 'hi markdownH5 guifg='s:func
exe 'hi markdownH6 guifg='s:func
exe 'hi markdownCode guifg='s:str
exe 'hi markdownCodeBlock guifg='s:str
exe 'hi markdownCodeDelimiter guifg='s:const
exe 'hi markdownBlockquote guifg='s:str
exe 'hi markdownListMarker guifg='s:keyword
exe 'hi markdownOrderedListMarker guifg='s:comment
exe 'hi markdownRule guifg='s:comment
exe 'hi markdownHeadingRule guifg='s:comment
exe 'hi markdownUrlDelimiter guifg='s:fg
exe 'hi markdownLinkDelimiter guifg='s:fg
exe 'hi markdownLinkTextDelimiter guifg='s:fg
exe 'hi markdownHeadingDelimiter guifg='s:fg
exe 'hi markdownUrl guifg='s:keyword
exe 'hi markdownUrlTitleDelimiter guifg='s:func
exe 'hi markdownIdDeclaration guifg='s:builtin
exe 'hi markdownLinkText guifg='s:fg' gui=underline'

" C Highlighting
exe 'hi cOperator guifg='s:keyword
exe 'hi cStructure guifg='s:const

" Python
exe 'hi pythonBuiltin guifg='s:builtin
exe 'hi pythonBuiltinObj guifg='s:builtin
exe 'hi pythonBuiltinFunc guifg='s:func
exe 'hi pythonFunction guifg='s:func' gui=bold'
exe 'hi pythonDecorator guifg='s:type
exe 'hi pythonInclude guifg='s:keyword
exe 'hi pythonImport guifg='s:keyword
exe 'hi pythonRun guifg='s:keyword
exe 'hi pythonCoding guifg='s:type
exe 'hi pythonOperator guifg='s:const
exe 'hi pythonException guifg='s:warning
exe 'hi pythonExceptions guifg='s:warning2
exe 'hi pythonBoolean guifg='s:type
exe 'hi pythonDot guifg='s:keyword
exe 'hi pythonConditional guifg='s:keyword
exe 'hi pythonRepeat guifg='s:keyword
exe 'hi pythonDottedName guifg='s:type

" NERDTree
exe 'hi NERDTreeDir guifg='s:keyword
exe 'hi NERDTreeDirSlash guifg='s:keyword
exe 'hi NERDTreeOpenable guifg='s:warning2
exe 'hi NERDTreeClosable guifg='s:warning2
exe 'hi NERDTreeFile guifg='s:fg
exe 'hi NERDTreeExecFile guifg='s:str
exe 'hi NERDTreeUp guifg='s:comment
exe 'hi NERDTreeCWD guifg='s:func
exe 'hi NERDTreeHelp guifg='s:fg
exe 'hi NERDTreeToggleOn guifg='s:func
exe 'hi NERDTreeToggleOff guifg='s:warning
