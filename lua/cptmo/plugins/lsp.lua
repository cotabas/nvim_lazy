return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {'neovim/nvim-lspconfig',             -- Required
  'williamboman/mason.nvim',           -- Optional
  'williamboman/mason-lspconfig.nvim', -- Optional

  -- Autocompletion
  'hrsh7th/nvim-cmp',         -- Required
  'hrsh7th/cmp-nvim-lsp',     -- Required
  'hrsh7th/cmp-buffer',       -- Optional
  'hrsh7th/cmp-path',         -- Optional
  'saadparwaiz1/cmp_luasnip', -- Optional
  'hrsh7th/cmp-nvim-lua',     -- Optional

  -- Snippets
  'L3MON4D3/LuaSnip',             -- Required
  'rafamadriz/friendly-snippets'}, -- Optional
  config = function()
    local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(client, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    require('mason').setup({})
    require('mason-lspconfig').setup({
      -- Replace the language servers listed here 
      -- with the ones you want to install
      ensure_installed = {'tsserver', 'clangd', 'gopls', 'lua_ls', 'html'},
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,
      },
    })
  end
}
