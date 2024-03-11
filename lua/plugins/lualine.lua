return {
	"nvim-lualine/lualine.nvim",

	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				component_separators = "|",
				section_separators = "",
			},
			tabline = {
				lualine_a = {
					{
						"buffers",
						symbols = {
							alternate_file = "",
						},
					},
				},
			},
		})
	end,
}
