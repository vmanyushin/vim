" Base settings
" Load Pathogem plugin

execute pathogen#infect()
set number
set ruler
set encoding=utf-8
syntax enable

"" 
"" coloring
""
let g:molokai_original = 1
colorscheme molokai
set t_Co=256

""
"" Whitespaces global
""
set tabstop=4    " a tab is four spaces
set shiftwidth=4 " an autoindent (with <<) is four spaces
set expandtab    " use spaces, not tabs 

"" SnipMates plugin setting
""
let g:snips_email='vmanyushin@gmail.com'
let g:snips_author='vmanyushin'

""
"" Mapping
""
nmap <C-T> <Esc> :tabnew<CR>:Explore<CR>
vmap <C-T> <Esc> :tabnew<CR>:Explore<CR>
imap <C-T> <Esc> :tabnew<CR>:Explore<CR>

nmap <F4>   :close<CR>

nmap <C-P> <Esc> :tabprev<CR>
vmap <C-P> <Esc> :tabprev<CR>
imap <C-P> <Esc> :tabprev<CR>

nmap <F2> <Esc> :w<CR>
vmap <F2> <Esc> :w<CR> 
imap <F2> <Esc> :w<CR>

"" BufExplorer
nmap <C-b> <Esc>:BufExplorer<cr>
vmap <C-b> <esc>:BufExplorer<cr>
imap <C-b> <esc>:BufExplorer<cr>

map <C-n> :NERDTreeToggle<CR>

nnoremap <silent> <C-l> :nohl<CR><C-l>

if has("autocmd")
  " Enable file type detection
  filetype on
  
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  
  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby,eruby,haml setlocal ts=2 sts=2 sw=2 expandtab autoindent
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType php map <buffer> <C-E> :!php %<CR>
  autocmd FileType perl map <buffer> <C-E> :!perl %<CR>
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml 
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
endif

"" misc
:set laststatus=2
