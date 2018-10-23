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


" Define reusable colorvariables.
let s:bg       = "#343233" " Grey
let s:fg       = "#EFDAB9" " Tan
let s:fg2      = "#EFDAB9" " Tan
let s:fg3      = "#c9b79b" " Unknown
let s:fg4      = "#b6a68d" " Unknown
let s:bg2      = "#343233" " Grey
let s:bg3      = "#4c494a" " Unknown
let s:bg4      = "#656364" " Unknown
let s:keyword  = "#78AF9F" " Teal
let s:builtin  = "#659CC8" " Blue
let s:const    = "#78AF9F" " Teal
let s:comment  = "#808080" " Grey
let s:func     = "#84cb88" " Green
let s:str      = "#FFD152" " Yellow
let s:type     = "#659CC8" " Blue
let s:var      = "#EFDAB9" " Tan
let s:warning  = "#C13F21" " Red
let s:warning2 = "#D36E2D" " Orange

exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Cursor guifg='s:bg' guibg='s:fg
exe 'hi CursorLine  guibg='s:bg3
exe 'hi CursorLineNr guibg='s:bg' guifg='s:str
exe 'hi CursorColumn  guibg='s:bg2
exe 'hi ColorColumn  guibg='s:bg2
exe 'hi LineNr guifg='s:fg2' guibg='s:bg2
exe 'hi VertSplit guifg='s:bg' guibg='s:bg3
exe 'hi MatchParen guifg='s:warning2'  gui=underline'
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg3' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel  guibg='s:bg3
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
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
exe 'hi Identifier guifg='s:type'  gui=italic'
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4' guibg='s:bg2
exe 'hi Number guifg='s:const
exe 'hi Operater guifg='s:keyword
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Statement guifg='s:keyword
exe 'hi StorageClass guifg='s:type'  gui=italic'
exe 'hi String guifg='s:str
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg' gui=bold'
exe 'hi Type guifg='s:type
exe 'hi Underlined   gui=underline'

" Ruby Highlighting
exe 'hi rubyAttribute guifg='s:builtin
exe 'hi rubyLocalVariableOrMethod guifg='s:var
exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyNumber guifg='s:const

" Go Highlighting
exe 'hi goBuiltins guifg='s:builtin
exe 'hi goDirective guifg='s:keyword
exe 'hi goConstants guifg='s:const
exe 'hi goDeclaration guifg='s:func
exe 'hi goDeclType guifg='s:type

" GitGutter Highlighting
exe 'hi GitGutterAdd guifg='s:func
exe 'hi GitGutterChange guifg='s:str
exe 'hi GitGutterDelete guifg='s:warning
exe 'hi GitGutterChangeDelete guifg='s:warning2

" Java Highlighting
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

" Javascript Highlighting
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

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin

" C Highlighting

exe 'hi cOperator guifg='s:type
exe 'hi cStructure guifg='s:str

" Python Highlighting
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

" NERDTree Highlighting
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
