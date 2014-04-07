" Visual bell
set vb

" Rulers
set number
set ruler
set textwidth=120

set timeoutlen=200

" Ack!
set grepprg=ack

set wildignore+=*node_modules/*

" Swap files in one place
set backupdir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Simpler escaping now with 30% more saving!
imap hh <esc>:w<CR>
vmap hh <esc>:w<CR>
"Let's try this…
imap <leader><leader> <ESC>:w<CR>
vmap <leader><leader> <ESC>:w<CR>
nmap <leader><leader> :w<CR>

" Let’s make backward search easier
" First, hide away the eq.
vnoremap <leader>= =
nnoremap <leader>= =
vmap = ?
nmap = ?

"Screw Ex mode
nmap Q <nop>

" Block commenting
"
" Ruby etc.
vmap  u :s/^/#/<CR>
vmap  U :s/^#//<CR>
"
" C etc.
map .c :s/^/\/\//<CR>
map .C :s/^\/\///<CR>

" Strip whitespace
"nnoremap <silent> <leader>W :let _s=@/<Bar>:%s/\v\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:w<CR>


" Syntax
set nocompatible      " We're running Vim, not Vi!
syntax on

set background=dark
colorscheme solarized

" Vundle requires plugin and indent enabled after it.
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Github bundles
Bundle 'tpope/vim-fugitive.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'tsaleh/vim-matchit.git'
Bundle 'mattn/webapi-vim.git'
Bundle 'mattn/gist-vim.git'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'hail2u/vim-css3-syntax.git'
Bundle 'groenewege/vim-less.git'
Bundle 'tpope/vim-surround.git'
Bundle 'kien/rainbow_parentheses.vim.git'
" Clojure
Bundle 'guns/vim-clojure-static.git'
Bundle 'tpope/vim-classpath.git'
Bundle 'tpope/vim-fireplace.git'

" Vimscript bundles
Bundle 'matchit'


" Vundle needs this to be after it.
filetype plugin indent on

" Text editing could use autoformatting
au FileType,Syntax,BufRead,BufNewFile,BufEnter *.md setlocal formatoptions+=a
au FileType,Syntax,BufRead,BufNewFile,BufEnter *.md setlocal noautoindent
au FileType,Syntax,BufRead,BufNewFile,BufEnter *.md setlocal nosmartindent
au FileType,Syntax,BufRead,BufNewFile,BufEnter *.md setlocal spell spelllang=en_us

" Highlight the desirable EOL
" guifg=#dcdccc guibg=#213449
au Syntax,BufRead,BufNewFile,BufEnter * highlight rue_margin73  guibg=#304050
au Syntax,BufRead,BufNewFile,BufEnter * highlight rue_margin80  guibg=#405060
au Syntax,BufRead,BufNewFile,BufEnter *  match rue_margin73 /\%<80v.\%>72v/
au Syntax,BufRead,BufNewFile,BufEnter * 2match rue_margin80 /.\%>80v/

" Highlight whitespace errors
"au Syntax,BufRead,BufNewFile,BufEnter * highlight rue_whitespaceError guibg=red guifg=white
au Syntax,BufRead,BufNewFile,BufEnter * 3match Error /\s\+$\| \+\ze\t/  " Whitespace errors

" Remove trailing whitespace from selection
"nmap <leader>c :%s/ *$//<CR>:w<CR>

" Use comma as <Leader> key instead of backslash
let mapleader=","

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

map ` :set hls!<CR>
"noremap <esc> :nohls<cr>

" Indenting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

" Dvorak
" Normally, < ^ v > == h k j l
" Here,     < ^ v > == h t n s, d remains delete
noremap t k
noremap k t

noremap n j
noremap j n

noremap s l
noremap l s

" Window
nmap <c-w>h <c-w>h
nmap <c-w>t <c-w>W
nmap <c-w>n <c-w>w
nmap <c-w>s <c-w>l

" Buffer navigation and stuff
" < >
"nmap <leader>c bp|bw #
nmap <leader>p <c-w>p
nmap <leader>n <c-w>n

" Command-T
nmap <leader>t :CtrlPMixed<CR>
nmap <leader>T :CtrlP<CR>

let g:ctrlp_custom_ignore = '\v\.(git|hg|svn|js|html)$'

" Ack
nmap <leader>a :Ack<CR>

" Tagbar
nmap <leader>b :TagbarOpenAutoClose<CR>

" Double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
"cnoremap %% <C-R>=expand('%:h').'/'<cr>

" ,, moves between previous buffers
"nnoremap <leader><leader> <c-^>

" Folding
"set foldmethod=syntax
"set fillchars=fold:\ " note the whitespace after
"hi  Folded      guibg=grey      guifg=blue
"hi  FoldColumn  guibg=darkgrey  guifg=white

" Scripts
"
" Tabwrapper detects whether tab completion is needed
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr> endfunction


" Project
let g:proj_window_width=20
let g:proj_flags="imstTg"

nmap <silent> <Leader>P <Plug>ToggleProject


" MiniBufExplorer
let g:miniBufExplModSelTarget = 1           " Avoid opening in non-modifiables
let g:miniBufExplForceSyntaxEnable = 0      " force syntax highlighting

" MBE navigation
let g:miniBufExplMapWindowNavVim = 1        " <c-hjkl>
let g:miniBufExplMapCTabSwitchBufs = 1      " <c-tab>, <c-s-tab> for buffers

" Basic status plus fugitive.vim
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Rainbow is here because theme messes with it otherwise.
let g:rbpt_colorpairs = [
  \ [ '9',  '#cb4b16'],
  \ [ '2',  '#859900'],
  \ [ '4',  '#268bd2'],
  \ [ '1',  '#dc322f'],
  \ [ '6',  '#2aa198'],
  \ [ '13', '#6c71c4'],
  \ [ '3',  '#b58900'],
  \ [ '5',  '#d33682'],
  \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
