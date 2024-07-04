return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "c", "lua", "rust", "go", "javascript", "vimdoc", "bash", "markdown_inline", "markdown" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
