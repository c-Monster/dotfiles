" vim plug
call plug#begin()
" plugins
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
call plug#end()

" plugin options

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%* " placement for checking
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0 " change when to check syntax
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go'] " set go checkers
let g:syntastic_quiet_messages = {'level':'warnings'}
let python_highlight_all=1 " python coloring
syntax on


" NERDTree
command! NT NERDTreeToggle
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore python innards


" window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" clipboard (linux)
vnoremap <C-c> :%w !xclip -i -sel c<CR><CR>
vnoremap <C-v> :r !xclip -o -sel -c<CR><CR>

" extra stuff
"
" set custom tab width
set tabstop=4
set shiftwidth=4

" set color scheme
colorscheme koehler

" show line numbers
set number
set relativenumber

" keep cursor in center of screen
set scrolloff=999

" change location of swap files
set directory=/tmp

" disable button clicks
:noremap <LeftMouse> <nop>
:noremap <2-LeftMouse> <nop>
:inoremap <LeftMouse> <nop>
:inoremap <2-LeftMouse> <nop>
