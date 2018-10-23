" ------------------------------------------------------------------------------
" File: comfy.vim
" Description: 'Comfy' airline scheme file
" Author: Jayden Chan <jaydencn7@gmail.com>
" Based on airline file from Josh Dick's 'onedark' theme:
" (https://github.com/joshdick/onedark.vim)
" ------------------------------------------------------------------------------

let g:airline#themes#comfy#palette = {}

function! airline#themes#comfy#refresh()
    let s:bg       = "#343233" " Grey
    let s:fg       = "#EFDAB9" " Tan
    let s:fg2      = "#EFDAB9" " Tan
    let s:fg3      = "#c9b79b" " Unknown
    let s:fg4      = "#b6a68d" " Unknown
    let s:bg2      = "#343233" " Grey (bg)
    let s:bg3      = "#4c494a" " Light Grey
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


    let g:airline#themes#comfy#palette.accents = {
                \ 'red': [ s:warning, '', '', 0 ]
                \ }

    let s:N1 = [ s:bg, s:func, '', '']
    let s:N2 = [ s:fg, s:bg3, '', '' ]
    let s:N3 = [ s:func, s:bg, '', '' ]
    let g:airline#themes#comfy#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

    let group = airline#themes#get_highlight('vimCommand')
    let g:airline#themes#comfy#palette.normal_modified = {
                \ 'airline_c': [ group[0], '', group[2], '', '' ]
                \ }

    let s:I1 = [ s:bg, s:type, '', '' ]
    let s:I2 = s:N2
    let s:I3 = [ s:type, s:bg, '', '' ]
    let g:airline#themes#comfy#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#comfy#palette.insert_modified = g:airline#themes#comfy#palette.normal_modified

    let s:R1 = [ s:bg, s:warning, '', '' ]
    let s:R2 = s:N2
    let s:R3 = [ s:warning, s:fg, '', '' ]
    let g:airline#themes#comfy#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let g:airline#themes#comfy#palette.replace_modified = g:airline#themes#comfy#palette.normal_modified

    let s:V1 = [ s:bg, s:const, '', '' ]
    let s:V2 = s:N2
    let s:V3 = [ s:const, s:const, '', '' ]
    let g:airline#themes#comfy#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#comfy#palette.visual_modified = g:airline#themes#comfy#palette.normal_modified

    let s:IA1 = [ s:bg, s:fg, '', '' ]
    let s:IA2 = [ s:fg, s:bg3, '', '' ]
    let s:IA3 = s:N2
    let g:airline#themes#comfy#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
    let g:airline#themes#comfy#palette.inactive_modified = {
                \ 'airline_c': [ group[0], '', group[2], '', '' ]
                \ }

    " Warnings
    let s:WI = [ s:bg, s:str, '', '' ]
    let g:airline#themes#comfy#palette.normal.airline_warning = [
                \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
                \ ]

    let g:airline#themes#comfy#palette.normal_modified.airline_warning =
                \ g:airline#themes#comfy#palette.normal.airline_warning

    let g:airline#themes#comfy#palette.insert.airline_warning =
                \ g:airline#themes#comfy#palette.normal.airline_warning

    let g:airline#themes#comfy#palette.insert_modified.airline_warning =
                \ g:airline#themes#comfy#palette.normal.airline_warning

    let g:airline#themes#comfy#palette.visual.airline_warning =
                \ g:airline#themes#comfy#palette.normal.airline_warning

    let g:airline#themes#comfy#palette.visual_modified.airline_warning =
                \ g:airline#themes#comfy#palette.normal.airline_warning

    let g:airline#themes#comfy#palette.replace.airline_warning =
                \ g:airline#themes#comfy#palette.normal.airline_warning

    let g:airline#themes#comfy#palette.replace_modified.airline_warning =
                \ g:airline#themes#comfy#palette.normal.airline_warning

    " Errors
    let s:ER = [ s:bg, s:warning, '', '' ]
    let g:airline#themes#comfy#palette.normal.airline_error = [
                \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
                \ ]

    let g:airline#themes#comfy#palette.normal_modified.airline_error =
                \ g:airline#themes#comfy#palette.normal.airline_error

    let g:airline#themes#comfy#palette.insert.airline_error =
                \ g:airline#themes#comfy#palette.normal.airline_error

    let g:airline#themes#comfy#palette.insert_modified.airline_error =
                \ g:airline#themes#comfy#palette.normal.airline_error

    let g:airline#themes#comfy#palette.visual.airline_error =
                \ g:airline#themes#comfy#palette.normal.airline_error

    let g:airline#themes#comfy#palette.visual_modified.airline_error =
                \ g:airline#themes#comfy#palette.normal.airline_error

    let g:airline#themes#comfy#palette.replace.airline_error =
                \ g:airline#themes#comfy#palette.normal.airline_error

    let g:airline#themes#comfy#palette.replace_modified.airline_error =
                \ g:airline#themes#comfy#palette.normal.airline_error

endfunction

call airline#themes#comfy#refresh()
