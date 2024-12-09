return {
  -- mason.nvim eklentisi
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        "typescript_language_server"
      }
    },
    config = function()
      -- Mason'ı başlatıyoruz
      require('mason').setup()
    end
  },

  -- mason-lspconfig.nvim eklentisi
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "ts_ls", "omnisharp" },
      })
    end
  },

  -- nvim-cmp eklentisi
  {
    'hrsh7th/nvim-cmp',
  },

  -- cmp-nvim-lsp eklentisi
  {
    'hrsh7th/cmp-nvim-lsp',
  },

  -- nvim-lspconfig eklentisi
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.ts_ls.setup{}
    end
  }
}
