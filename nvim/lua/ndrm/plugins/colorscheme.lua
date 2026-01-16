return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- lebih gelap, warm
				background = {
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- untuk terminal transparan
				styles = {
					comments = { "italic" },
					keywords = { "bold" },
					functions = { "bold" },
					variables = {},
				},
				color_overrides = {
					mocha = {
						base = "#3B2E2A", -- background coklat gelap
						mantle = "#4A3B35", -- blok
						crust = "#5C443A", -- block deeper
						text = "#F5F0E1", -- teks krem
						overlay0 = "#E0C097", -- teks aksen lembut
						pink = "#D98F5F", -- accent
						red = "#FF5555",
						orange = "#FF9955",
						yellow = "#FFDDAA",
					},
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
