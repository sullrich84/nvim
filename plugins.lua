local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      local options = {
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "black" },
          -- html = { "prettier" },
        },

        -- format_on_save = {
        --   -- These options will be passed to conform.format()
        --   timeout_ms = 500,
        --   lsp_fallback = true,
        -- },
      }
      require("conform").setup(options)
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-project.nvim",
      "nvim-telescope/telescope-dap.nvim",
    },
    opts = {
      extensions_list = { "themes", "terms", "project", "dap" },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  { "tommcdo/vim-exchange", lazy = false },
  { "AndrewRadev/switch.vim", lazy = false },
  { "tribela/vim-transparent", lazy = false },
  { "AndrewRadev/sideways.vim", lazy = false },
  { "tpope/vim-surround", lazy = false },
  { "tpope/vim-speeddating", lazy = false },
  { "luochen1990/rainbow", lazy = false },

  "NvChad/nvcommunity",
  { import = "nvcommunity.git.lazygit" },
  { import = "nvcommunity.editor.autosave" },

  {
    "mfussenegger/nvim-dap",
    lazy = false,
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "mxsdev/nvim-dap-vscode-js",
      "theHamsta/nvim-dap-virtual-text",
      "mxsdev/nvim-dap-vscode-js",
    },
    config = function()
      require "custom.configs.dap"
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = require "custom.configs.todo-comments",
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = require "custom.configs.dashboard",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
  },
}

return plugins
