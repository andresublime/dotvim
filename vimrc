" .vimrc
" Author: Andre Lyytinen
" Version: 2
"
" Basic Options ------------------------------------------{{{
   set nocompatible
   execute pathogen#infect()
   syntax on
   filetype plugin indent on
   autocmd vimenter * if !argc() | NERDTree | endif
   map <C-A> :NERDTreeToggle<CR>
   set hidden
   set encoding=utf-8
   set scrolloff=2
   let mapleader = ","
   set visualbell
   set nobackup
   set nowritebackup
   set noswapfile
"}}}

" Working with Split Windows -----------------------------{{{
   nnoremap <leader>w <C-w><C-w>l
   nnoremap <C-h> <C-w>h
   nnoremap <C-j> <C-w>j
   nnoremap <C-k> <C-w>k
   nnoremap <C-l> <C-w>l
   set pastetoggle=<F2>

"}}}
" Tabs and Indents ---------------------------------------{{{
   set autoindent
   set expandtab
   set shiftwidth=3
   set tabstop=3
"}}}

" Wraps and Breaks ---------------------------------------{{{
   set wrap
   set showbreak=↪
   set title
   set showmode
   set showcmd
   set ruler
   set history=1000
   set undolevels=1000
   set linebreak
   set cursorline
   set list
   set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
"}}}

" Copied Settings -----------------------------------------{{{
   set wildmenu
   set wildmode=list:longest,full
   set number
   set shiftround
   set incsearch
"
" Favorite Color Scheme
"   colorscheme distinguished
   set background=dark
   colorscheme molokai
"}}}
"
" Other Settings -----------------------------------------{{{
" Indent Guides {{{

let g:indentguides_state = 0
      function! IndentGuides() " {{{
         if g:indentguides_state
            let g:indentguides_state = 0
               2match None
            else
               let g:indentguides_state = 1
               execute '2match IndentGuides /\%(\_^\s*\)\@<=\%(\%'.(0*&sw+1).'v\|\%'.(1*&sw+1).'v\|\%'.(2*&sw+1).'v\|\%'.(3*&sw+1).'v\|\%'.(4*&sw+1).'v\|\%'.(5*&sw+1).'v\|\%'.(6*&sw+1).'v\|\%'.(7*&sw+1).'v\)\s/'
            endif
      endfunction " }}}
   hi def IndentGuides guibg=#303030 ctermbg=234
nnoremap <leader>I :call IndentGuides()<cr>

" }}}
"
"}}}
