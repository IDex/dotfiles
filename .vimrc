" Vundle shit
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'vim-latex/vim-latex'
" Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'powerline/powerline'
Plugin 'tell-k/vim-autopep8'
Plugin 'tpope/vim-fugitive'
Plugin 'ap/vim-templates'
" Plugin 'klen/python-mode'
call vundle#end()            " required
filetype plugin indent on    " required
autocmd BufRead *.py nmap <F5> :!python %<CR>
autocmd BufRead *.tex nmap <return> :!pdflatex -interaction=batchmode %<CR>
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
set background=dark
syntax on
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
" set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
set sw=4 ts=4 sts=4 et
set fdm=indent
set showcmd
"let g:Imap_UsePlaceHolders=0
let g:syntastic_python_checkers = ['pylint', 'flake8']
let g:syntastic_html_checkers = ['tidy', 'jslint']
let g:syntastic_javascript_checkers = ['jshint', 'jslint']
let g:pymode_python = 'python3'
let g:pymode_doc_bind = "<C-S-d>"
let g:pymode_rope_autoimport = 0
let g:pymode_rope = 0 
let g:pymode_rope_lookup_project = 0 
let g:pymode_rope_complete_on_dot = 0
let g:autopep8_disable_show_diff=1
let mapleader="å"
cmap w!! w !sudo tee % >/dev/null 
" map = recursive -> current meaning of target
" noremap = non-recursive -> original meaning of target
autocmd Filetype python nmap <return> :!python3 %<CR>
autocmd Filetype python nmap <leader>l :redraw!<CR>
autocmd Filetype python nmap <leader>a :Autopep8<CR>
nmap <leader>g <C-]>
nmap <leader>c :cd %:p:h<CR>
nmap <leader>l :lcd %:p:h<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gg :Gpull<CR>
nmap <leader>= <C-W>=
nmap + <C-W>+
nmap - <C-W>-
map <leader>yc "+y
nnoremap <space> za
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nnoremap j gj
nnoremap k gk
map J 5j
map K 5k
map <Esc><Esc> :w<CR>
set fileencodings=ucs-bom,utf-8,sjis,default
set nohlsearch
set smartcase
set notimeout
set ttimeout
