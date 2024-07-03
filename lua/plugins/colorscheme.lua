return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({})
		vim.cmd("colorscheme catppuccin-macchiato")

        vim.api.nvim_set_hl(0, 'LineNrAbove', {fg='grey'})
        vim.api.nvim_set_hl(0, 'LineNr', {fg='grey'})
        vim.api.nvim_set_hl(0, 'LineNrBelow', {fg='grey'})
	end,
}
