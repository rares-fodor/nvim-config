local map = vim.api.nvim_set_keymap 

-- Remap leader
map('n', '<SPACE>', '<leader>', {noremap = false})
-- Esc rebind
map('i', 'jk', '<ESC>', {noremap = true})
map('n', '<C-p>', '<C-i>', {noremap = true})

map('n', '<leader>l', ':ls<CR> :b <SPACE>', {noremap = true})

-- Telescope
map('n', '<leader>ff', '<CMD>Telescope find_files <CR>', {noremap = true})
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>', {noremap = true})
map('n', '<leader>fb', '<CMD>Telescope buffers<CR>', {noremap = true})

-- Diagnostics
map('n', '<C-e>', '<CMD>TroubleToggle<CR>', {noremap = true})

-- Select all
map('n', '<C-a>', 'ggVG', {noremap = true})

-- Remap window controls
map('n', '<leader>w', '<C-w>', {noremap = true})

-- Kill buffer
map('n', '<leader>bk', ':bd! <CR>', {noremap = true})

-- Cycle buffers
map('n', '<TAB>', ':BufferLineCycleNext <CR>', {noremap = true, silent = true})
map('n', '<A-]>', ':BufferLineCycleNext <CR>', {noremap = true, silent = true})
map('n', '<A-[>', ':BufferLineCyclePrev <CR>', {noremap = true, silent = true})

-- Alt commands to move text selections around
map('v', '<A-k>', ":m '<-2<CR>gv", {noremap = true, silent = true})
map('v', '<A-j>', ":m '>+1<CR>gv", {noremap = true, silent = true})
map('v', '<A-h>', "<gv", {noremap = true, silent = true})
map('v', '<A-l>', ">gv", {noremap = true, silent = true})
map('n', '<A-k>', ":m -2<CR>==", {noremap = true, silent = true})
map('n', '<A-j>', ":m +1<CR>==", {noremap = true, silent = true})
map('n', '<A-h>', "<<", {noremap = true, silent = true})
map('n', '<A-l>', ">>", {noremap = true, silent = true})

-- Terminal mode to normal mode with escape
map('t', '<ESC>', '<C-\\><C-n>', {noremap = true})
map('t', 'jk', '<C-\\><C-n>', {noremap = true})

-- Spawn terminals
map('n', '<SPACE>tl', "<cmd> vsplit +term | startinsert <CR>", {noremap = true, silent = true})
map('n', '<SPACE>tj', "<cmd> split +term | startinsert <CR>", {noremap = true, silent = true})

