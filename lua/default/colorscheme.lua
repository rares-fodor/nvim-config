vim.cmd [[ 
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1
let g:sonokai_style = 'atlantis'
]]

vim.cmd [[
try
  colorscheme moonfly 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
