set nocompatible
set autoread

filetype off

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Basic defaults
Plugin 'tpope/vim-sensible'

" UI and navigation
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-signify'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/rainbow_parentheses.vim'

" Completion etc helpers
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'

" tmux
Plugin 'benmills/vimux'
Plugin 'jgdavey/vim-turbux'
Plugin 'christoomey/vim-tmux-navigator'

" VCS integration
Plugin 'tpope/vim-fugitive'

" colorize RGB colours
Plugin 'lilydjwg/colorizer'

" line at indent levels
Plugin 'Yggdroot/indentLine'

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

" pleasing and readable!
colorscheme zenburn

" bellbellbellbellbellbellbellbell
set noerrorbells
set novisualbell

" Backups etc inside a working directory are such a pain, so move them into
" the vim directory.
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tempfiles

set hlsearch
set ignorecase
set smartcase

" No line wrapping, but please don't break lines for me, vim.
set fo+=o
set fo-=r
set fo-=t

set nowrap
set textwidth=119

set mouse=a
set mousehide

" Unbind the cursor keys in insert, normal and visual modes. Hardcore.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" escape is hard, rolling jk is easy
inoremap jk <ESC>

" comma is pretty easy to hit too!
let mapleader = ','

set encoding=utf-8
set t_Co=256

" Tabs and trailing spaces are evil.
set list listchars=tab:>-,trail:.
set expandtab
set shiftwidth=4
set tabstop=4

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/.vim/*']
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 1

" play nice with supertab
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType='<C-n>'


" uncomment if you want syntastic to do a syntax check on file open. Can be SLOOOOW
"let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" vim-airline
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
set noshowmode

" NERDTree
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" vimux
let g:VimuxUseNearestPane = 1
map <leader>vp :VimuxPromptCommand<CR>
map <leader>vl :VimuxRunLastCommand<CR>
map <leader>vi :VimuxInspectRunner<CR>
map <leader>vq :VimuxCloseRunner<CR>

" tmux navigator
let g:tmux_navigator_no_mappings = 1

" awesome tmux navigation shortcuts, for best results your meta key should be
" something easy to hit.. 
nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
nnoremap <silent> <M-l> :TmuxNavigateRight<CR>

" default to 120 columns, with highlighting at 80 and 120 for reference
let &colorcolumn="80,120"

" ECLIM
let g:EclimCompletionMethod = 'omnifunc'
let g:airline#extensions#eclim#enabled = 1

" delimitMate
let delimitMate_expand_cr = 1

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

" indentLine
let g:indentLine_color_term = 228
let g:indentLine_color_gui = '#FFFF87'
let g:indentLine_char = '|'

" ctrlP
let g:ctrlp_map = '<leader>p'
let g:ctrlp_use_caching=0
