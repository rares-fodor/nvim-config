local options = {
	clipboard = "unnamedplus",
	ignorecase = true,
	mouse = "a",
	tabstop = 8,
	smartcase = true,
	hlsearch = true,
	undofile = true,
	expandtab = false,
	shiftwidth = 8,
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

