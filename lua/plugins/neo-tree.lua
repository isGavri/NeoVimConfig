return {
  "nvim-neo-tree/neo-tree.nvim",  -- neotree, file explorer
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",

  },
  config = function()
    local config = require("neo-tree")
    config.setup({
      window = {
        position = "right",
        width = 25,
      },
      filesystem = {
        filtered_items = {
          visible = true
        }
      }
    })
    vim.keymap.set('n', '<C-e>', '<cmd>Neotree filesystem reveal right<CR>', {})
    vim.keymap.set('n', '<leader>e', '<cmd>Neotree close<CR>', {})
  end
}
