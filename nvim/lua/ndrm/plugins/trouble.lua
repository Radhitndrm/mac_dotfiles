return {
	{
		"folke/trouble.nvim",
		cmd = { "Trouble" },
		keys = {
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>",  desc = "Diagnostics (Trouble)" },
			{ "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer diagnostics (Trouble)" },
			{ "<leader>xr", "<cmd>Trouble lsp references toggle<CR>", desc = "LSP References (Trouble)" },
		},
		opts = {},
	},
}
