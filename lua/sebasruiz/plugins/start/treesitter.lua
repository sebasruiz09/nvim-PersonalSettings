return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "HiPhish/rainbow-delimiters.nvim",
  },
  build = ":TSUpdate",
  event = "VeryLazy",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "luadoc",
        "python",
        "yaml",
        "rust",
        "vim",
        "css",
        "scss",
        "json",
        "html",
        "javascript",
        "typescript",
        "dart",
      },
      sync_install = false,
      ignore_install = {},
      auto_install = true,
      --rainbow = {
      --enable = true,
      --query = "rainbow-delimiters",
      --strategy = require("rainbow-delimiters").strategy["global"],
      --hlgroups = {
      --"RainbowDelimiterRed",
      --"RainbowDelimiterYellow",
      --"RainbowDelimiterBlue",
      --"RainbowDelimiterOrange",
      --"RainbowDelimiterGreen",
      --"RainbowDelimiterViolet",
      --"RainbowDelimiterCyan",
      --},
      --},
      highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = true,
      },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,
          loookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["ai"] = "@function.inner",
            ["ac"] = "@conditional.outer",
            ["ic"] = "@conditional.inner",
            ["al"] = "@loop.outer",
            ["il"] = "@loop.inner",
          },
        },
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<c-space>",
          node_incremental = "<c-space>",
          scope_incremental = "<c-s>",
          node_decremental = "<M-space>",
        },
      },
    })
  end,
}
