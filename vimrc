set nocompatible
set autoread

set hlsearch
set ignorecase
set smartcase

set fo+=o
set fo-=r
set fo-=t

set nowrap

set backspace=indent,eol,start

set mouse=a
set mousehide

filetype off

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, can pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" UI and navigation
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'mhinz/vim-signify'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/rainbow_parentheses.vim'

" Completion etc helpers
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'

" tmux
Plugin 'benmills/vimux'
Plugin 'jgdavey/vim-turbux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mutewinter/vim-tmux'

" VCS integration
Plugin 'tpope/vim-fugitive'

" Language-specific plugins...

" markdown
Plugin 'plasticboy/vim-markdown'

" Javascript/JSON
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'

" Cocoa
Plugin 'msanders/cocoa.vim'

" Silly text formats
Plugin 'chrisbra/csv.vim'

call vundle#end()
filetype plugin indent on

colorscheme zenburn

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

inoremap jk <ESC>

syntax on
set encoding=utf-8
set t_Co=256

set list listchars=tab:>-,trail:.,extends:>
set expandtab
set tabstop=4

" YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/.vim/*']
let g:ycm_complete_in_comments = 1

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
