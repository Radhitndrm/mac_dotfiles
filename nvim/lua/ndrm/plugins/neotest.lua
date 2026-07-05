return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		keys = {
			{ "<leader>tn", function() require("neotest").run.run() end,                 desc = "Run nearest test" },
			{ "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run test file" },
			{ "<leader>tr", function() require("neotest").run.run_last() end,            desc = "Run last test" },
			{ "<leader>ts", function() require("neotest").summary.toggle() end,          desc = "Toggle test summary" },
			{ "<leader>to", function() require("neotest").output.open() end,             desc = "Open test output" },
		},
		opts = {},
	},
}
