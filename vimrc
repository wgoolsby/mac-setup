execute pathogen#infect()
let $PATH = 'usr/local/bin:'.$PATH

syntax on
filetype plugin indent on

set nocompatible
set mouse=a
set autoread
set backspace=indent,eol,start
set history=500
set ruler
set showcmd
set cmdheight=1
set incsearch
set hlsearch
set ignorecase
set showmatch
set number
set numberwidth=4
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set nobackup
set noswapfile
set wrap!
set columns=160
set laststatus=2
set splitbelow

"Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

"stop stupid error sounds
set noerrorbells
set novisualbell

"enable 256 color mode
set t_Co=256

"turn on utf-8 file encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

"show trailing spaces
set list listchars=tab:‣‧,trail:•

"Changing leader key to comma
let mapleader=","

"tab navigation
noremap <leader>t :tabn<cr>
noremap <leader>n :tabnew<cr>
noremap <leader>c :tabclose<cr>

"to find files using ctrlp
noremap <leader>f :CtrlP<cr>

"to find buffers using ctrlp
noremap <leader>b :CtrlPBuffer<cr>

"Nerdtree
noremap <leader>s :NERDTree<cr>
noremap <leader>o :NERDTreeToggle<cr>

"create horizontal & vertical splits
noremap <leader>h :sp<cr>
noremap <leader>v :vsp<cr>

"JSBeautify
autocmd FileType javascript noremap <buffer> <leader>j :call JsBeautify()<cr>
"for html
autocmd FileType html noremap <buffer> <leader>j :call HtmlBeautify()<cr>

"clear last search highlighting without turning it off
noremap <C-f> :noh <return><esc>

"window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"Plugin behaviors
let g:mustache_abbreviates=1
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp**;rdoc/**"

"Startup NERDTREE Tabs on on vim open
let g:nerdtree_tabs_open_on_console_startup=0


"Show dotfiles in NERDTREE
let NERDTreeShowHidden=1

"autocmd vimenter * NERDTree
autocmd FileType text setlocal textwidth=80

"Airline
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled=1

:set smartcase
:set ignorecase
:set noantialias

hi CursorLineNr guifg=#050505

"Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
