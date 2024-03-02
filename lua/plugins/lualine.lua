return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local config = require("lualine")
    config.setup({
      options = {
        --theme = "gruvbox_dark"
        theme = "modus-vivendi",
      },
      sections = {
        lualine_a = { "tabs" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "diagnostics" },
        lualine_y = { "filetype", "progress" },
        lualine_z = { "mode" },
      },
    })
  end,
}
