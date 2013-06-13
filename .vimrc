set nocompatible

colorscheme default
silent! call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable                     " Turn on syntax highlighting.
set autoindent                    " Keeps indentation on same line.
set hidden                        " Handle multiple buffers better.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin. Use % to use it.
set backspace=indent,eol,start    " Intuitive backspacing.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set nowrap                        " Turns off line wrapping.
set scrolloff=5                   " Show 5 lines of context around the cursor.

set visualbell                    " No beeping.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location.

set splitbelow                    " More natural horizontal split
set splitright                    " More natual vertical split
"set autochdir                     " Current working directory per file

" Turn off backup, but keep big history.
set nobackup
set history=1000
set undolevels=1000

" Show the status line all the time.
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Very readable settings. Based on Guido's style guide.
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Turn off gitgutter in standard vim, on by default in gui vim
let g:gitgutter_enabled = 0

" Python-specific settings, autoindent, autocomplete
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
let g:pydiction_location = '$HOME/Documents/complete-dict'

" Softwrap for txt files
autocmd BufRead *.txt set wrap linebreak textwidth=0
autocmd BufRead *.md set wrap linebreak textwidth=0

" Leader mappings.
let mapleader = ","

" Plugin support, NERDTree, CommandT
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>m :CommandT<cr>

" Source and open $MYVIMRC, reloads the saved $MYVIMRC
nnoremap <Leader>c :source $MYVIMRC
nnoremap <Leader>v :e $MYVIMRC

" Swaps colon and semicolon for easier commands.
nnoremap ; :
nnoremap : ;

vnoremap ; :
vnoremap : ;
