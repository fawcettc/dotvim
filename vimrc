colorscheme zenburn

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

inoremap jk <ESC>

filetype plugin indent on
syntax on
set encoding=utf-8

set tabstop=4
