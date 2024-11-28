return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.gruvbox_material_enable_italic = true
			vim.g.gruvbox_material_background = 'hard'
			vim.g.gruvbox_material_foregroun = 'mix'
			vim.cmd.colorscheme('gruvbox-material')
		end

	},
	{
		"yorumicolors/yorumi.nvim",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	vim.cmd [[colorscheme yorumi]]
		-- end
	},
}
