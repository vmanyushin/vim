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
nmap <C-T> :tabnew<CR>:Explore<CR>
nmap <F4>  :close<CR>
nmap <C-B> :tabnext<CR>
nmap <C-P> :tabprev<CR>
nmap <F2>  :w<CR>

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
  
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml 
endif


