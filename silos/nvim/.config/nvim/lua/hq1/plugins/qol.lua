return {
  { "sitiom/nvim-numbertoggle" },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup({ hide_cursor = false })
    end
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
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
