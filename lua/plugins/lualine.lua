return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
 config = function()
    local config = require("lualine")
    config.setup({
      options = {
       --theme = "gruvbox_dark"
       theme = "modus-vivendi"
      },
      sections = {
        lualine_a = {'windows'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {'diagnostics'},
        lualine_z = {'location'},
      }
    })
  end
}
