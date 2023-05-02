return {
	"vim-test/vim-test",
	config = function()
		local keymap = vim.keymap.set
		local opts = { noremap = true, silent = true }

		keymap("n", "tf", ":TestFile<CR>", opts)
		keymap("n", "tt", ":TestNearest<CR>", opts)
		keymap("n", "tl", ":TestLast<CR>", opts)
		keymap("n", "tv", ":TestVisit<CR>", opts)

		vim.api.nvim_exec(
			[[
				function! TestPanel(cmd)
					let bnr = bufnr("TestPanel")
					if bnr > 0
						 execute 'bdelete! ' . bnr
					endif
					execute 'botright 10 new'
					call termopen(a:cmd)
					norm G
					execute 'file! TestPanel'
					echo 'Test: ' . a:cmd
					nmap <buffer> q :bd!<cr>
					nnoremap <buffer> o :vs<cr>gF<C-w>=
					au BufEnter <buffer> wincmd _
					au BufLeave <buffer> resize 10
					wincmd p
				endfunction

				let g:test#custom_strategies = {'custom': function('TestPanel')}
				let g:test#strategy = "custom"
				]],
			false
		)
	end,
}
