return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local fzf = require("fzf-lua")
		local opts = { noremap = true, silent = true, desc = "FZF Related Shit" }

		fzf.setup({
			fzf_opts = {
				["--layout"] = "reverse",
			},
			winopts = {
				fullscreen = true,
				preview = {
					layout = "flex",
					default = "bat_native",
				},
			},
		})

		vim.keymap.set("n", "go", function()
			fzf.files({
				winopts = { preview = { hidden = "hidden" } },
			})
		end, opts)

		vim.keymap.set("n", "gO", function()
			fzf.files({
				winopts = { preview = { hidden = "hidden" } },
				fd_opts = [[--color=never --type f --hidden --follow --no-ignore -E .git -E _build -E .elixir_ls]],
			})
		end, opts)

		vim.keymap.set("n", "<leader>l", function()
			fzf.live_grep_native()
		end, opts)

		vim.keymap.set("n", "<leader>b", function()
			fzf.git_branches()
		end, opts)

		vim.keymap.set("n", "<leader>L", function()
			fzf.live_grep_native({
				rg_opts = [[--column --line-number --no-heading --color=always --smart-case --max-columns=512 --no-ignore -g '!{.git,_build,.elixir_ls}/']],
			})
		end, opts)

		vim.keymap.set("n", "<leader><space>", function()
			fzf.buffers()
		end, opts)
	end,
}
