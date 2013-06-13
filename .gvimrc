" Start without the toolbar
set guioptions-=T

" Start without scrollbars
set guioptions=aAce

" Highlight lines that are more than 80 characters.
set colorcolumn=80

" Start gitgutter on startup
let g:gitgutter_enabled = 1

" Default gui color scheme
color candycode

" Fullscreen takes up entire screen
if has("gui_macvim")
  set fuoptions=maxhorz,maxvert
endif
