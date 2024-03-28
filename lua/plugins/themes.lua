return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local catppuccin = require("catppuccin")
      catppuccin.setup({
        flavour = "frappe",
      })
      --vim.cmd.colorscheme("catppuccin")
      --vim.cmd.colorscheme("catppuccin-frappe")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      local kanagawa = require("kanagawa")
      kanagawa.setup({
        theme = "dragon",
      })
      --vim.cmd.colorscheme("kanagawa")
      --vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },
  {
    {
      "AlexvZyl/nordic.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        require("nordic").load()
      end,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    jpriority = 1000,
    config = true,
    opts = function()
      --vim.o.background = "dark"
      --vim.cmd([[colorscheme gruvbox]])
    end,
  },
  {
    "savq/melange-nvim",
    config = function()
      --vim.opt.termguicolors = true
      --vim.cmd.colorscheme("melange")
    end,
  },
}
