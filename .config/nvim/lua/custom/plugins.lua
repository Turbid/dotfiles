-- local overrides = require("custom.configs.overrides")

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "python",
        "html",
        "css",
        "javascript",
        "json",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright"
      },
    },
  },

  {
    "HallerPatrick/py_lsp.nvim",
    ft = { 'python' },
    config = function()
      require("py_lsp").setup{
        host_python = "/usr/bin/env python3",
        default_venv_name = ".venv",
      }
    end,
  },

  {
    "ivanesmantovich/xkbswitch.nvim",
    lazy = false,
    config = function()
      require("xkbswitch").setup()
    end,
  },
}

return plugins
