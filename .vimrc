" Vundle shit
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=/home/ide/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'vim-latex/vim-latex'
" Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'Lokaltog/powerline'
Plugin 'klen/python-mode'
call vundle#end()            " required
filetype plugin indent on    " required
autocmd BufRead *.py nmap <F5> :!python %<CR>
autocmd BufRead *.tex nmap <F6> :!pdflatex %<CR>
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
set background=dark
syntax on
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
" set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
set sw=4 ts=4 sts=4 expandtab
" set tw=79
set fdm=indent
set showcmd
"let g:Imap_UsePlaceHolders=0
let g:syntastic_python_checkers = ['pylint', 'flake8']
let g:pymode_python = 'python3'
let g:pymode_doc_bind = "<C-S-d>"
let g:pymode_rope_autoimport = 0
let g:pymode_rope = 0 
let g:pymode_rope_lookup_project = 0 
let g:pymode_rope_complete_on_dot = 0
let mapleader=","
cmap w!! w !sudo tee % >/dev/null 
nnoremap <space> za
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nnoremap j gj
nnoremap k gk
nmap J 5j
nmap K 5k
map <Esc><Esc> :w<CR>
set fileencodings=ucs-bom,utf-8,sjis,default
set acd
