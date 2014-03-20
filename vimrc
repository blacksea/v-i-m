set nocompatible  " disable vi compatibility.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set autoread  
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set clipboard+=unnamed  " Yanks go on clipboard instead.
set pastetoggle=/] "  toggle between paste and normal: for 'safer' pasting from keyboard
set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags
set t_Co=256
" Modeline
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
" Backup
set nowritebackup
set nobackup
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
" Buffers
set hidden " The current buffer can be put to the background without writing to disk
" Match and search
set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase		" be sensitive when there's a capital letter
set incsearch   "
set wrap
set textwidth=0                " Don't wrap lines by default

set tabstop=2                  " tab size eql 2 spaces
set softtabstop=2
set shiftwidth=2               " default shift width for indents
set expandtab                  " replace tabs with ${tabstop} spaces
set smarttab                   "

set backspace=indent
set backspace+=eol
set backspace+=start

set autoindent
set cindent
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case

syntax on               " enable syntax
filetype plugin indent on             " Automatically detect file types.

set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set laststatus=2  " Always show status line.
set vb t_vb= " disable any beeps or flashes on error
set ruler  " Show ruler
set showcmd " Display an incomplete command in the lower right corner of the Vim window
set shortmess=atI " Shortens messages

set nolist " Display unprintable characters f12 - switches
set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping

set foldenable " Turn on folding
set foldmethod=syntax " Fold by syntax
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 
set mouse-=a   " Disable mouse
set mousehide  " Hide mouse after chars typed
set splitbelow
set splitright
set smarttab
imap jj <Esc>
colors BCSB
nmap ! :Gwrite<CR>
nmap @ :Gcommit -m '
execute pathogen#infect()
set encoding=utf-8
map <C-j> <C-w>h<C-w> 
map <C-k> <C-w>l<C-w>
map <Tab> :NERDTreeToggle<CR>
nmap <CR> G
nmap <Tab><Tab> :w<CR>
nmap <C-@> :Git push ghub master<CR>
nmap \ :bn<CR>
nmap <C-\> :bp<CR>
nmap ' :res -1<CR>
nmap " :res +1<CR>
let g:nrrw_rgn_vert = 1
let g:nrrw_rgn_wdth = 120
hi folded ctermbg = 0

let g:airline_powerline_fonts = 1 " POWERLINE SYMBOLS
let g:airline_theme = 'powerlineish' 
let g:airline#extensions#whitespace#enabled = 0
let g:nrrw_rgn_hl = 'Visual'
