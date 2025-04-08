return {

  -- visualize renaming
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
  {
    "tpope/vim-surround",
  },
  {
    "gbprod/yanky.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "NachoNievaG/atac.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("atac").setup({
        dir = "~/atac-nvim", -- By default, the dir will be set as /tmp/atac
      })
    end,
  },
  ---@type LazySpec
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        "<leader>-",
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        -- Open in the current working directory
        "<leader>cw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
      {
        -- NOTE: this requires a version of yazi that includes
        -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
        "<c-up>",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    },
    ---@type YaziConfig
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      keymaps = {
        show_help = "<f1>",
      },
    },
  },
  {
    "cameron-wags/rainbow_csv.nvim",
    config = true,
    ft = {
      "csv",
      "tsv",
      "csv_semicolon",
      "csv_whitespace",
      "csv_pipe",
      "rfc_csv",
      "rfc_semicolon",
    },
    cmd = {
      "RainbowDelim",
      "RainbowDelimSimple",
      "RainbowDelimQuoted",
      "RainbowMultiDelim",
    },
  },
  -- {
  --   "fredrikaverpil/godoc.nvim",
  --   version = "*",
  --   dependencies = {
  --     { "nvim-telescope/telescope.nvim" }, -- optional
  --     { "folke/snacks.nvim" }, -- optional
  --     { "echasnovski/mini.pick" }, -- optional
  --     { "ibhagwan/fzf-lua" }, -- optional
  --     {
  --       "nvim-treesitter/nvim-treesitter",
  --       opts = {
  --         ensure_installed = { "go" },
  --       },
  --     },
  --   },
  --   build = "go install github.com/lotusirous/gostdsym/stdsym@latest", -- optional
  --   cmd = { "GoDoc" }, -- optional
  --   opts = {}, -- see further down below for configuration
  --   picker = {
  --     type = "snacks",
  --
  --     snacks = {},
  --     telescope = {},
  --   },
  -- },
}
