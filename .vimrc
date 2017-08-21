set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle required
Plugin 'VundleVim/Vundle.vim'
Plugin 'JulesWang/css.vim'






" All of your Plugins must be added following this line

Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/c.vim'


call vundle#end()		" required
filetype plugin indent on	" required
