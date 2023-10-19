local fn = vim.fn


-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

local ok, packer = pcall(require, "packer")
if not ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use "neovim/nvim-lspconfig"
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "ggandor/leap.nvim"
  use "folke/trouble.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-cmdline"
  use "nvim-telescope/telescope.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim" , run = "make" }
  use "nvim-lua/plenary.nvim"
  use "BurntSushi/ripgrep"
  use "akinsho/bufferline.nvim"
  use "nvim-lualine/lualine.nvim"
  use "ray-x/lsp_signature.nvim"
  use "Darazaki/indent-o-matic"

  -- THEMES
  use "sainnhe/sonokai"
  use "bluz71/vim-moonfly-colors"
  use "NLKNguyen/papercolor-theme"
  use "ayu-theme/ayu-vim"
  use "EdenEast/nightfox.nvim"
  use "rebelot/kanagawa.nvim"

end)
