local options = {
	clipboard = "unnamedplus",
	ignorecase = true,
	mouse = "a",
	tabstop = 4,
	smartcase = true,
	hlsearch = true,
	undofile = true,
	expandtab = true,
	shiftwidth = 2,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	relativenumber = true,
	numberwidth = 3,
	signcolumn = "yes",
	scrolloff = 6,
	guifont = "monospace:h16",
}

for k, v in pairs(options) do
   vim.opt[k] = v
end
