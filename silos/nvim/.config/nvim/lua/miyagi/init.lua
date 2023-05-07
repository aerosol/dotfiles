local miyagi = {}

function miyagi.setup()
	local light = require("miyagi.light")
	local dark = require("miyagi.dark")
	if vim.o.background == "dark" then
		require("lualine").setup({
			options = {
				theme = require("miyagi.lualine_dark"),
			},
		})

		return dark
	else
		require("lualine").setup({
			options = {
				theme = require("miyagi.lualine_light"),
			},
		})
		return light
	end
end

return miyagi
