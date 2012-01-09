if &term =~ "xterm"
  "256 color --
  let &t_Co=256
  " restore screen after quitting
  "set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
  if has("terminfo")
    let &t_Sf="\ESC[3%p1%dm"
    let &t_Sb="\ESC[4%p1%dm"
  else
    let &t_Sf="\ESC[3%dm"
    let &t_Sb="\ESC[4%dm"
  endif
endif

set nocompatible

colorscheme ron

syntax on "syntax highlighting

filetype plugin indent on

set tabstop=4 "tab is 4 spaces
set shiftwidth=4 "autoindent 4 spaces
set softtabstop=4
set expandtab "use spaces instead of tabs
set autoindent 
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode 
set showcmd "show cmd being typed
set showmatch "show matching braces
set hidden
set wildmenu
set wildmode=list:longest "command line completion
set noerrorbells
set novisualbell
"set cursorline
set ttyfast 
set ruler "show cursor position
set statusline=%F\ %m%r%=%y\ %L\ %4.l,%3.v"
set backspace=indent,eol,start "sane backspace usage
set laststatus=2
"set relativenumber
"set number "show linenumbers
set numberwidth=5
"set undofile
set gcr=n:blinkon0 "turn off blinking cursor
set hlsearch "highlight search matches 
set incsearch "incremental search
set ignorecase "ignore case in searches
set smartcase "unless searching for both upper and lowercase letters
set nobackup "get rid of ~file
set wrap "break long lines

if has("gui_running")
    set lines=60
    set guifont=Consolas:h12
    set guioptions-=m "remove menu bar
    set guioptions-=T "remove toolbar
    set guioptions-=lL "remove left scrollbar
    set guioptions-=rR "remove right scrollbar
endif

