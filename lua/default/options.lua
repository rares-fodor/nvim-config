local options = {
	clipboard = "unnamedplus",
	ignorecase = true,
	mouse = "a",
	smartcase = true,
	hlsearch = true,
	undofile = true,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	list = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	relativenumber = true,
	numberwidth = 3,
	signcolumn = "yes",
	scrolloff = 6,
    termguicolors = true,	
    guifont = "CaskaydiaCoveNerdFontCompleteM Nerd Font:h12",
}

for k, v in pairs(options) do
   vim.opt[k] = v
end

