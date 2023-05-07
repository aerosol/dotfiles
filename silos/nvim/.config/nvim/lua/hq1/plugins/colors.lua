return {
	{
		"rktjmp/lush.nvim",
		config = function()
			if os.getenv("MUH_THEME") == "light" then
				vim.cmd([[colorscheme hq1shiro]])
			else
				vim.cmd([[colorscheme hq1miyagi]])
			end
		end,
	},
}
