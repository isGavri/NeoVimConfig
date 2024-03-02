return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        presets = {
          command_palette = true,  -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,      -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false,  -- add a border to hover docs and signature help
        },
        messages = {
          enabled = true,         -- enables the Noice messages UI
          view = "mini",        -- default view for messages
          view_error = "mini", -- view for errors
          view_warn = "mini",     -- view for warnings
          view_history = "popup",  -- view for :messages
          view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
          -- Popup menu
          views = {
            cmdline_popup = {
              position = {
                row = 5,
                col = "50%",
              },
              size = {
                width = 60,
                height = "auto",
              },
            },
            popupmenu = {
              relative = "editor",
              position = {
                row = 8,
                col = "50%",
              },
              size = {
                width = 60,
                height = 10,
              },
              border = {
                style = "rounded",
                padding = { 0, 1 },
              },
              win_options = {
                winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
              },
            },
          },
        },
      })
    end,
  },
}
