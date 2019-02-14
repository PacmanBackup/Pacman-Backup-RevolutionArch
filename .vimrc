set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle required
Plugin 'VundleVim/Vundle.vim'







" All of your Plugins must be added following this line

Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/c.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/vim-orgmode'
Plugin 'vim-scripts/perl.vim'

call vundle#end()		" required
filetype plugin indent on	" required

:set nu

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
			\ set tabstop=4
			\ set softtabstop=4
			\ set shiftwidth=4
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix

set encoding=utf-8

au BufNewFile,BufRead *.js, *.html, *.css
			\ set tabstop=2
			\ set softtabstop=2
			\ set shiftwidth=2
