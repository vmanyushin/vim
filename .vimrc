let g:molokai_original = 1
colorscheme molokai
set number
set t_Co=256
execute pathogen#infect()

set tabstop=4

let g:snips_email='vmanyushin@gmail.com'
let g:snips_author='vmanyushin'


nmap <C-T> : tabnew <CR>
nmap <F4>  : close <CR>
nmap <C-B> : tabnext <CR>
nmap <C-P> : tabprev <CR>
nmap <F3>  : hlsearch! <CR>

set tabstop=2 " a tab is two spaces
set shiftwidth=2 " an autoindent (with <<) is two spaces
set expandtab " use spaces, not tabs

