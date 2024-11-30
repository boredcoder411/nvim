return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "boredcoder411/make.nvim",
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "SuperBo/fugit2.nvim",
    opts = {
      width = 100,
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
      {
        "chrisgrieser/nvim-tinygit", -- optional: for Github PR view
        dependencies = { "stevearc/dressing.nvim" },
      },
    },
    cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph" },
    keys = {
      { "<leader>F", mode = "n", "<cmd>Fugit2<cr>" },
    },
  },
  {
    "andweeb/presence.nvim",
  },
  {
    "github/copilot.vim",
  },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      --animation = true,
      --insert_at_start = true,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "goolord/alpha-nvim",
    config = function()
      require "lua.config.greeter-theme"
    end,
  },
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme "lackluster"
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
