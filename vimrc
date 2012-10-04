""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                   [s0805753] .vimrc configuration
"                   IF. 4.06,
"                   The University of Edinburgh
"
"                   February 2012
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Turn off vi compatibility
set nocompatible

" Pathogen plugin
call pathogen#infect() 

filetype plugin indent on
syntax on

" Turn on omni-completion
set ofu=syntaxcomplete#Complete

"Automatically change directory to that of current buffer
autocmd BufEnter * silent! lcd %:p:h

"tab settings
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
set smarttab

"Indentation & searching
set autoindent
set smartindent

"Line break settings 
set linebreak

"Set swap file &  backup directory to /tmp
"set directory=/tmp,/tmp
"set backupdir=/tmp,/tmp

"Turn off backups - bloody annoying.
set nobackup
set nowritebackup

"Disable swapfiles
set noswapfile

"Create backup files (if what...)
"set undofile

"Set global line matching by default, use /g to use for old behaviour
set gdefault

"Smart searching
set ignorecase
set smartcase

"Encoding settings
set encoding=utf-8

"Fix regular expression matching
nnoremap / /\v
vnoremap / /\v

"set ruler
set ttyfast
set hidden

"Mouse in the console
set mouse=a

"GVim font settings
set gfn=Monospace\ 8

"set wrapping - line break after 450 characters
set textwidth=450

"Do not wrap text
set nowrap

"Colour column
"set colorcolumn=95

"Spelling in proper English
set spelllang=en_gb

"Search only unfolded text
set foldopen-=search

"Enable LaTeX folding
let g:tex_fold_enabled=1

"Modelines security fix
set modelines=0

"Set 256-colour terminal mode
set t_Co=256

"Redraw screen (to get rid of previous search highlighting)
nnoremap <silent><leader>c :nohlsearch<CR>

"Toggle spelling 
nnoremap <silent><leader>s :set spell!<CR>

"Set Tab to locate matching braces
nnoremap <tab> %
vnoremap <tab> %

"Highlighting search query
set hlsearch
set showmatch

"Incremental search
set incsearch

" Bubble lines
nmap <silent> <m-j> ddp
nmap <silent> <m-k> ddkP

vmap <silent> <m-j> xjp`[v`]
vmap <silent> <m-k> xkp`[v`]

"Abbreviations
ab shoudl should
ab adn and
ab teh the

"Disable the accursed arrow keys (antithetical to Vim)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Simplify moving around split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Get rid of help key 
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"Tab shortcuts
nmap T :tabnew  

"NErdTree Toggle
nmap <silent> <leader>/ :NERDTreeToggle<CR>

"Backspace instead of ^ 
"noremap  ^

"Highlight cursor line
hi CursorLine   cterm=NONE ctermbg=235
set cursorline

"Set line numbering
set number

"Display relative line numbers
set relativenumber

"colour theme
colorscheme vividchalk
set background=dark

"Miscellaneous
set scrolloff=3
set ss=1
set siso=9
set showmode
set showcmd
set visualbell

"Set wildmenu for selecting buffers 
set wildmenu

"Preserve column 
set nostartofline

"Display buffers
nmap <silent> <leader>b :ls<CR>
imap <silent> <leader>b <ESC>:ls<CR>

"Buffer switching using PageUp/Down keys
map <PageUp> :bprevious<CR>
map <PageDown> :bnext<CR>
imap <PageUp> <ESC>:bprevious<CR>
imap <PageDown> <ESC>:bnext<CR>

"Tab navigation 
noremap gh :tabprevious<CR>

"Set status line colour
hi User1 ctermbg=black  ctermfg=darkgray guibg=black  guifg=darkgray
hi User2 ctermbg=black  ctermfg=red guibg=black  guifg=red
hi User4 ctermbg=black  ctermfg=white guibg=black  guifg=white

"Status line
set statusline=                                                      " clear the statusline for when vimrc is reloaded
set statusline+=%1*                                                  " switch to User1 highlight
set statusline+=%-3.3n\                                              " buffer number
set statusline+=%f\                                                  " file name
set statusline+=%h%m%r%w                                             " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},                          " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},                         " encoding
set statusline+=%{&fileformat}]                                      " file format
set statusline+=%=                                                   " right align
set statusline+=%2*                                                  " red
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\    " highlight
set statusline+=%3*                                                  " white
set statusline+=%b,0x%-8B\                                           " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P                                " offset

"Always display status line
set laststatus=2

"Performance - no re-drawing during macro execution
set lazyredraw

"Read file when modified
set autoread
