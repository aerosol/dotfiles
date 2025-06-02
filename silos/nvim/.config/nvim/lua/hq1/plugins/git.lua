local keymap = vim.keymap.set
local opts = { noremap = true, silent = false }

return {
	{
		"f-person/git-blame.nvim",
		opts = {
			enabled = true, -- if you want to enable the plugin
			message_template = " <summary> • <author> (<sha>)", -- template for the blame message, check the Message template section for more options
			date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
			virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
		},
	},
	{
		"sindrets/diffview.nvim",
		config = function()
			require("diffview").setup({
				enhanced_diff_hl = true,
				hooks = {
					diff_buf_read = function(bufnr)
						vim.opt_local.foldlevel = 99
						vim.opt_local.foldenable = false
					end,
					diff_buf_win_enter = function(bufnr)
						vim.opt_local.foldlevel = 99
						vim.opt_local.foldenable = false
					end,
				},
			})

			keymap("n", "gD", ":tab :DiffviewOpen<cr>:WindowsDisableAutowidth<cr>", opts)
			vim.api.nvim_create_user_command("DiffReviewPR", ":DiffviewOpen origin/master...HEAD --imply-local", {})
			vim.api.nvim_create_user_command(
				"DiffReviewIndividualCommits",
				":DiffviewFileHistory --range=origin/master...HEAD --right-only --no-merges",
				{}
			)
			keymap("v", "dp", ":diffput<cr>", opts)
			keymap("v", "dg", ":diffget<cr>", opts)
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.api.nvim_create_user_command("Browse", 'silent execute "!xdg-open " . expand("<args>")', { nargs = 1 })
			keymap("n", "gs", ":tab :Git<cr>:exe 'normal gUzz'<cr>", opts)
			keymap("n", "gp", ":Git push<cr>", opts)
			keymap("n", "gl", ":tab :DiffviewFileHistory<cr>", opts)
			keymap("n", "gL", ":tab :DiffviewFileHistory --follow %<cr>", opts)
			-- keymap("n", "gc", ":tab :Git commit<cr>", opts)
			keymap("n", "gI", ":Git rebase -i origin/", opts)
			keymap("n", "gC", ":Git rebase --continue", opts)
			keymap("n", "gA", ":Git rebase --abort", opts)
			keymap({ "n", "v" }, "gb", ":Git blame<cr>", opts)
			keymap({ "n", "v" }, "gB", ":GBrowse<cr>", opts)
		end,
	},
	"tpope/vim-rhubarb",
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "✚" },
					change = { text = "✎" },
					delete = { text = "✘" },
					topdelete = { text = "‾" },
					changedelete = { text = "✘" },
				},
			})
		end,
	},
}
