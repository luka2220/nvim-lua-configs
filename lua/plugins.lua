local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- snippets engine
  use 'L3MON4D3/LuaSnip'

  -- Status line
  use 'hoob3rt/lualine.nvim'
  use "nvim-tree/nvim-web-devicons"

  -- Colorschema
  use 'bluz71/vim-nightfly-guicolors'

  -- vs code pictograms
  use 'onsails/lspkind-nvim'

  -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-buffer'

  -- nvim-cmp source for neovims built in lsp
  use 'hrsh7th/cmp-nvim-lsp'

  -- Auto comletion
  use 'hrsh7th/nvim-cmp'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

end)
