return {
	{
		"everviolet/nvim",
		name = "evergarden",
		priority = 1000,
		config = function()
			require("evergarden").setup({
				theme = {
					variant = "fall",
					accent = "green",
				},
				editor = {
					transparent_background = false,
				},
				integrations = {
					lualine = true,
					telescope = true,
					neotree = true,
					gitsigns = true,
					blink_cmp = true,
				},
			})

			vim.cmd("colorscheme evergarden")

			local bg = "#232a2e"
			local bg_soft = "#2b3337"

			vim.api.nvim_set_hl(0, "Normal", { bg = bg })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#58686d", bg = bg })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#f5d098", bold = true })

			vim.api.nvim_set_hl(0, "CursorLine", { bg = bg_soft })
			vim.api.nvim_set_hl(0, "ColorColumn", { bg = bg_soft })
			vim.api.nvim_set_hl(0, "FoldColumn", { bg = bg })
			vim.api.nvim_set_hl(0, "VertSplit", { fg = "#2b3337", bg = bg })
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#2b3337", bg = bg })

			vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg, fg = "#374145" })
		end,
	},
}
