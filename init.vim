"Cool configuration B)

" ===Editor Config===

set nu rnu
syntax on
set background=dark

set tabstop=4
set shiftwidth=4
set expandtab

set termguicolors

set clipboard=unnamed
set mouse=a
color pole


" ===Plugins===

call plug#begin('~\Appdata\Local\nvim\plugged')

    Plug 'preservim/nerdtree'

    Plug 'sheerun/vim-polyglot'

    Plug 'preservim/nerdcommenter'         

    Plug 'vim-airline/vim-airline'

    Plug 'vim-airline/vim-airline-themes'

    Plug 'rafi/awesome-vim-colorschemes'

    Plug 'equalsraf/neovim-gui-shim'

call plug#end()


" === Editor Commands ===

function! ToggleComment()
    let cline = getline(line("."))
    if strlen(cline) < 1
        echo "APPEND" 
        call NERDComment('n', 'Append')
    else
        if match(cline, '\S') >= 0
            call NERDComment('n', 'Toggle')    
        else
            call NERDComment('n', 'Insert')
        endif
    endif
endfunction

nnoremap <c-/> :call ToggleComment()<CR>
vnoremap <c-/> :call ToggleComment()<CR><esc>

nnoremap <c-D> :NERDTreeToggle<CR>
vnoremap <c-D> :NERDTreeToggle<CR><esc>


" === Airline ===

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set t_Co=256


" === Extra ===

au BufNewFile,BufRead *.s set ft=asm
au BufNewFile,BufRead *.S set ft=asm
