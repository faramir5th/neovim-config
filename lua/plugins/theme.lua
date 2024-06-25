return {
	"catppuccin/nvim",
	name = "theme",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("colorscheme catppuccin-mocha") -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
		require("catppuccin").setup({})
	end,
}
