vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true


vim.api.nvim_set_keymap("i", "jk", "<esc>l", {noremap = true, silent = true})

require('packer').startup(function(use)

    --packer
    use 'wbthomason/packer.nvim'

    --colors
    use 'morhetz/gruvbox'
    use 'andreasvc/vim-256noir'
    use 'twerth/ir_black'

    -- etc

    --LSP
    use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
}
end)

local lsp = require('lsp-zero')
require'lspconfig'.racket_langserver.setup{}
lsp.preset('recommended')
lsp.setup()

vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true
vim.opt.number = true
pcall(vim.cmd, 'colorscheme ir_black')
