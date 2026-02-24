return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "hard",
				transparent_mode = false,
			})

			vim.cmd("colorscheme gruvbox")

			-- background utama
			local bg = "#1d2021" -- gruvbox hard
			local bg_soft = "#282828"

			-- gutter & line number
			vim.api.nvim_set_hl(0, "Normal", { bg = bg })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#665c54", bg = bg })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#fabd2f", bold = true })

			-- hilangkan blok terang
			vim.api.nvim_set_hl(0, "CursorLine", { bg = bg_soft })
			vim.api.nvim_set_hl(0, "ColorColumn", { bg = bg_soft })
			vim.api.nvim_set_hl(0, "FoldColumn", { bg = bg })
			vim.api.nvim_set_hl(0, "VertSplit", { fg = "#3c3836", bg = bg })
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3c3836", bg = bg })

			-- floating window
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg, fg = "#504945" })
		end,
	},
}
