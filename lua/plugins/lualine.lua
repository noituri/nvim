return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox_dark",
			},
			sections = {
				lualine_c = {
					{
						"filename",
						file_status = true,
						path = 1,
					},
				},
			},
		})
	end,
}
