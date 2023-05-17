return {
	{
		"rebelot/kanagawa.nvim",
		config = function()
			if os.getenv("MUH_THEME") == "dark" then
				vim.cmd("colorscheme kanagawa-dragon")
			else
				vim.cmd("colorscheme miyagi")
			end
		end,
	},
	{
		"rktjmp/lush.nvim",
		-- config = function()
		-- 	if os.getenv("MUH_THEME") == "light" then
		-- 		vim.o.background = "light"
		-- 	else
		-- 		vim.o.background = "dark"
		-- 	end
		-- 	vim.cmd("colorscheme miyagi")
		-- end,
	},
}
