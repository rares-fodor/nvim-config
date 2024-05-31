vim.cmd [[ 
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1
let g:sonokai_style = 'atlantis'
let g:ayucolor='dark'
let g:kanagawa_disable_italic = 1
]]

vim.cmd [[
try
  colorscheme kanagawa
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
