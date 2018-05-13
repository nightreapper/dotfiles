set nocompatible
set shell=/bin/sh

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

let g:airline_powerline_fonts = 1
let &t_Co=256

set background=dark
let base16colorspace=256

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

set noerrorbells
set mouse=c
set hidden
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set autoread
set nowrap        " dont wrap words
set scrolloff=10
set hlsearch      " highlight search results
set textwidth=0
set colorcolumn=0
set smartindent
set ignorecase
set smartcase
set undofile

set lazyredraw
set ttyfast

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
 let s:uname = system("uname")
 if s:uname == "Darwin\n"
   set guifont=Inconsolata\ for\ Powerline:h15
 endif
endif

" wildmenu
set wildmenu
set wildmode=full:longest,full

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Line numbers
set number
set numberwidth=5

" Whitespace
set list
set listchars=tab:>.,trail:.,extends:\#,nbsp:.

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

nnoremap <Leader>a :Ack!<Space>

let g:ctrlp_clear_cache_on_exit = 0

inoremap <c-a> binding.pry

map <C-n> :NERDTreeToggle<CR>

" For emmet
let g:user_emmet_expandabbr_key='<c-e>'
