" vim, not vi
set nocompatible

" enable syntax highlighting
syntax enable

" show line numbers
set number

" show cursor line
set cursorline

" highlight search
set hlsearch

" light background
set background=light

" expand tabs to 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindent so that lists are formatted properly
set autoindent

" fix backspace
set backspace=indent,eol,start

" set filetype off for vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'Rip-Rip/clang_complete'

call vundle#end()

" disable popup for method params
let g:jedi#show_call_signatures="0"

" use filetype-specific indenting
filetype indent plugin on

" to enable clang integration...
"let g:clang_library_path="/path/to/libclang"

" source custom vim settings
runtime custom.vim
