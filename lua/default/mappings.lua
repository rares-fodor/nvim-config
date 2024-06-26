local map = vim.api.nvim_set_keymap 

-- Remap leader
map('n', '<SPACE>', '<leader>', {noremap = false})
-- Esc rebind
map('i', 'jk', '<ESC>', {noremap = true})
map('n', '<C-p>', '<C-i>', {noremap = true})

-- Search with <leader>s
map('n', '<leader>s', '/', {noremap = true})

-- Go to buffer
map('n', '<leader>l', ':ls<CR> :b <SPACE>', {noremap = true})

-- Telescope
map('n', '<leader>ff', '<CMD>Telescope find_files <CR>', {noremap = true})
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>', {noremap = true})
map('n', '<leader>fb', '<CMD>Telescope buffers<CR>', {noremap = true})
map('n', '<leader>fc', '<CMD>Telescope colorscheme<CR>', {noremap = true})
map('n', '<leader>fs', '<CMD>Telescope symbols<CR>', {noremap = true})


map('n', '+', '<C-p>', {noremap = true})
map('n', '_', '<C-o>', {noremap = true})


-- Trouble
map('n', '<C-e>', '<CMD>Trouble diagnostics toggle focus=true filter.buf=0<CR>', {noremap = true})
map('n', 'gr', '<CMD>Trouble lsp_references toggle focus=true<CR>', {noremap = true})

-- Select all
map('n', '<C-a>', 'ggVG', {noremap = true})

-- Remap window controls
map('n', '<leader>w', '<C-w>', {noremap = true})

-- Kill buffer
map('n', '<leader>bk', ':bd! <CR>', {noremap = true})

-- Cycle buffers
map('n', '<TAB>', ':bnext <CR>', {noremap = true, silent = true})
map('n', '<S-TAB>', ':bprev <CR>', {noremap = true, silent = true})

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

