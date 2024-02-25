local config = function()
	require("nvim-treesitter.configs").setup({
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
      "c",
      "cpp",
      "c_sharp",
      "cmake",
			"markdown",
			"json",
      "sql",
      "php",
			"javascript",
			"typescript",
			"yaml",
			"html",
			"css",
			"markdown",
      "csv",
			"bash",
			"lua",
			"dockerfile",
			"solidity",
			"gitignore",
			"python",
			"vue",
      "pascal",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
  lazy = false,
  config = config
}
