GuiTabline 0

GuiWindowOpacity 0.7

GuiRenderLigatures 1

execute "GuiFont! Agave Code:h14"

" commands
let s:fontsize = 14

function SetSize(size)
    let s:fontsize = a:size
    execute "GuiFont! Agave Code:h" . s:fontsize
endfunction

set mouse=a

command -nargs=1 SetSize call SetSize(<q-args>)
