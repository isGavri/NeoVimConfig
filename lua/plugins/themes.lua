return {
  {
    "catppuccin/nvim",
    "rebelot/kanagawa.nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local catppuccin = require("catppuccin")
      local kanagawa = require("kanagawa")
      catppuccin.setup({
        flavour = "mocha",
      })
      kanagawa.setup({
        theme = "dragon"
      })
    end,
  },
}
