return {
  { "sitiom/nvim-numbertoggle" },
  {
    'iguanacucumber/highlight-actions.nvim',
    keys = { "u", "p", "<C-r>" },             -- Lazy load on keymap
    -- opts = {}, -- for a default config
    opts = {
      highlight_for_count = true,                   -- Should '3p' or '5u' be highlighted
      duration = 300,                               -- Time in ms for the highlight
      actions = {
        Undo = {
          disabled = false,
          fg = '#dcd7ba',
          bg = '#2d4f67',
          mode = 'n',
          keymap = 'u',                               -- mapping
          cmd = 'undo',                               -- Vim command
          opts = {},                                  -- silent = true, desc = "", ...
        },
        Redo = {
          disabled = false,
          fg = '#dcd7ba',
          bg = '#2d4f67',
          mode = 'n',
          keymap = '<C-r>',
          cmd = 'redo',
          opts = {},
        },
        Pasted = {
          disabled = false,
          fg = '#dcd7ba',
          bg = '#2d4f67',
          mode = 'n',
          keymap = 'p',
          cmd = 'put',
          opts = {},
        },
        -- Any other actions you might wanna add
      },
    },
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup({ hide_cursor = false })
    end
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},             -- this is equalent to setup({}) function
  },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  "tpope/vim-sleuth",
  "andymass/vim-matchup"
}
