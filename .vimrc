""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                                  "
"                                            o8o                                                   "
"                                            `"'                                                   "
"                               oooo    ooo oooo  ooo. .oo.  .oo.                                  "
"                                `88.  .8'  `888  `888P"Y88bP"Y88b                                 "
"                                 `88..8'    888   888   888   888                                 "
"                                  `888'     888   888   888   888                                 "
"                                   `8'     o888o o888o o888o o888o                                "
"                                                                                                  "
"                                                                                                  "
"                                           .vimrc file                                            "
"                            created by Stefan Borsje (mail@sborsje.nl)                            "
"                                                                                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

" --------------------------------------------------------------------------------------------------
" Vundle
" --------------------------------------------------------------------------------------------------

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/tir_black'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'slim-template/vim-slim'
Bundle 'godlygeek/tabular'

filetype plugin indent on

" --------------------------------------------------------------------------------------------------
" General
" --------------------------------------------------------------------------------------------------

set encoding=utf8
set fileencoding=utf8
set shortmess=atI                   " Don’t show the intro message
set history=1000                    " increase history
set cf                              " enable error files and error jumping
set viminfo='1000,f1,:100,@100,/20  " remember lots of stuff
set gdefault                        " always apply substitutions globally on a line
"set autoread                        " automatically reread files that have been changed externally
"au CursorHold * checktime
set clipboard=unnamed               " clipboard sharing in OSX

" --------------------------------------------------------------------------------------------------
" Colors / Theme
" --------------------------------------------------------------------------------------------------

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  colorscheme tir_black
  set guifont=Inconsolata\ for\ Powerline:h14
  let g:Powerline_symbols = 'fancy'
endif

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" --------------------------------------------------------------------------------------------------
" UI
" --------------------------------------------------------------------------------------------------

set ruler
set showcmd                         " display incomplete commmands
set number
"set numberwidth=5                   " add padding to line numbers
set wildmenu                        " enhanced command-line completion
set wildmode=list:longest,full
set backspace=2                     " backspace over everything
""set whichwrap+=<,>,h,l,[,]          " wrap at start and end of line
set report=0                        " When doing substitutions, report the number of changes
set scrolloff=3                     " start scrolling three 3 before horizontal window border
set sidescroll=1                    " side scroll 1 character at a time
set sidescrolloff=15                " start sidescrolling 15 characters before end of line
set equalalways                     " multiple windows, when created, are equal in size
set splitbelow splitright           " change split order

"" Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc,*.zip,*.gz,*.bz,*.tar,*.avi,*.wmv,*.ogg,*.mp3,*.mov

""folding settings
"set foldmethod=syntax   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use


" --------------------------------------------------------------------------------------------------
" Backups
" --------------------------------------------------------------------------------------------------

set backup                          " use backups
set backupdir=~/.vim/tmp/backup     " put backupfiles in ~/.vim/tmp/backup
set swapfile                        " use swapfiles
set directory=~/.vim/tmp/swap       " put swapfiles in ~/.vim/tmp/swap

set undofile                        " undoing even after closing the file
set undodir=~/.vim/tmp/undo

" --------------------------------------------------------------------------------------------------
" Searching
" --------------------------------------------------------------------------------------------------

set incsearch                       " do incremental searching
set ignorecase                      " ignore case ...
set smartcase                       " ... most of the time

" --------------------------------------------------------------------------------------------------
" Visual Cues
" --------------------------------------------------------------------------------------------------

set showmatch                       " show matching braces / brackets
set ls=2                            " always show status line

" --------------------------------------------------------------------------------------------------
" Text Formatting
" --------------------------------------------------------------------------------------------------

set nowrap
set autoindent                      " auto indent new lines
set cindent
set smartindent
set smarttab
set softtabstop=2
set shiftwidth=2
set tabstop=2                       " number of spaces that a <Tab> counts for
set expandtab                       " expand tabs to spaces
"set virtualedit=block               " allow virtual editing in blockmode
set nojoinspaces                    " only use one space after ., ? or ! with a join command
set noesckeys                       " recognize single <Esc> immediately

" --------------------------------------------------------------------------------------------------
" Mappings
" --------------------------------------------------------------------------------------------------

" remap <LEADER> to ',' (instead of '\')
let mapleader = ","

"" exit to normal mode with 'jj'
"inoremap jj <ESC>

" Stronger h
nnoremap H 0
" Stronger l
nnoremap L $

" turn off arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" turn off arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" turn off arrow keys in visual mode
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" pressing j or k in a long wrapped will put cursor down/up one visual line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"" F3 controls search behaviour
"map <F3> n
"map <S-F3> N

" make F5 reload .vimrc
map <F5> :source ~/.vimrc<CR>

" tab navigation
nmap t1 1gt
nmap t2 2gt
nmap t3 3gt
nmap t4 4gt
nmap t5 5gt
nmap t6 6gt
nmap t7 7gt
nmap t8 8gt
nmap t9 9gt
nmap tn :tabnew<CR>
nmap tw :tabclose<CR>
nmap th :tabfirst<CR>
nmap tj :tabnext<CR>
nmap tk :tabprev<CR>
nmap tl :tablast<CR>

" fast switch between split windows
map <D-j> <C-W>W
map <D-k> <C-W>w
" Directly switch between open splitted windows
map <C-J> <C-W>j
map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-K> <C-W>k

" :W or :WQ == FAIL
map :W :w
map :WQ :wq

" turn off F1
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" inserts new line without going into insert mode
map <S-Enter> O<ESC>
map <Enter> o<ESC>

"" vertical split then hop to new buffer
"noremap <Leader>v :vsp^M^W^W<cr>
"noremap <Leader>h :split^M^W^W<cr>

" Clear out any search by typing <leader><space>
nnoremap <leader><space> :noh<cr>

"" Tabularize mappings
"if exists(":Tabularize")
"  nmap <Leader>a= :Tabularize /=<CR>
"  vmap <Leader>a= :Tabularize /=<CR>
"  nmap <Leader>a: :Tabularize /:\zs<CR>
"  vmap <Leader>a: :Tabularize /:\zs<CR>
"endif
"
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <s-tab> <c-n>

" --------------------------------------------------------------------------------------------------
" Convert tabs to spaces
" --------------------------------------------------------------------------------------------------

"function! TabsToSpaces ()
"  let save_cursor = getpos(".")
"  let old_query = getreg('/')
"  :%s/\t/  /e
"  call setpos('.', save_cursor)
"  call setreg('/', old_query)
"endfunction
"noremap <leader>t :call TabsToSpaces ()<CR>

" --------------------------------------------------------------------------------------------------
" Strip trailing whitespace (,s)
" --------------------------------------------------------------------------------------------------

function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>s :call StripWhitespace ()<CR>

" --------------------------------------------------------------------------------------------------
" Show tabs and trailing whitespace
" --------------------------------------------------------------------------------------------------

if (&termencoding == "utf-8") || has("gui_running")
  if v:version >= 700
    if has("gui_running")
      set list listchars=tab:▸\ ,trail:·,extends:…,nbsp:‗
    else
      " xterm + terminus hates these
      set list listchars=tab:»·,trail:·,extends:>,nbsp:_
    endif
  else
    set list listchars=tab:»·,trail:·,extends:…
  endif
else
  if v:version >= 700
    set list listchars=tab:>-,trail:.,extends:>,nbsp:_
  else
    set list listchars=tab:>-,trail:.,extends:>
  endif
endif
