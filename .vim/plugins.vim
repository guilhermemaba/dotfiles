" Some plugins might be CRLF ended, be nice and use LF only:
"
" find ~/.vim -type f -not -path '*/.git/*' -print0
"   | xargs -0 file -N
"   | grep CRLF
"   | cut -d ':' -f 1
"   | parallel --files cat {} \| tr -d '\\r' \| sponge {}

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'bogado/file-line'
Plugin 'chrisbra/csv.vim'
Plugin 'django.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'HTML-AutoCloseTag'
Plugin 'indenthtml.vim'
Plugin 'jeetsukumaran/vim-markology'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'leshill/vim-json'
Plugin 'mutewinter/vim-css3-syntax'
Plugin 'mutewinter/vim-tmux'
Plugin 'nono/vim-handlebars'
Plugin 'othree/html5.vim'
Plugin 'php.vim'
Plugin 'prettyprint.vim'
Plugin 'python_match.vim'
Plugin 'python.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/unite-help'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'SQLUtilities'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tsukkee/unite-tag'
Plugin 'vim-scripts/SyntaxComplete'
Plugin 'wavded/vim-stylus'

call vundle#end()
filetype plugin indent on
