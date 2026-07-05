return {
	"sudo-tee/opencode.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				anti_conceal = { enabled = false },
				file_types = { "markdown", "opencode_output" },
			},
			ft = { "markdown", "opencode_output" },
		},
	},
	opts = {
		default_mode = "build",
		default_global_keymaps = true,
		keymap_prefix = "<leader>o",
		opencode_executable = "opencode",
		keymap = {
			input_window = {
				["<M-m>"] = false,
				["<leader>om"] = { "switch_mode", mode = { "n", "i" }, desc = "Switch agent mode" },
			},
		},
		preferred_picker = "telescope",
		preferred_completion = "blink",
		ui = {
			position = "right",
			window_width = 0.40,
			icons = {
				preset = "nerdfonts",
			},
			output = {
				compact_assistant_headers = "minimal",
				tools = {
					show_output = true,
					show_reasoning_output = true,
					use_folds = true,
				},
			},
		},
		context = {
			enabled = true,
			current_file = { enabled = true, show_full_path = true },
			selection = { enabled = true },
			diagnostics = {
				info = false,
				warning = true,
				error = true,
			},
		},
	},
	keys = {
		{
			"<leader>og",
			function()
				return require("opencode.api").toggle()
			end,
			desc = "Toggle Opencode",
			mode = { "n", "v" },
		},
		{
			"<leader>oa",
			function()
				return require("opencode.api").toggle()
			end,
			desc = "Toggle Opencode (alias)",
			mode = { "n", "v" },
		},
	},
	config = function(_, opts)
		local opencode = require("opencode")

		vim.api.nvim_create_autocmd("BufEnter", {
			pattern = "opencode_output",
			callback = function()
				vim.opt_local.relativenumber = false
				vim.opt_local.number = false
			end,
		})

		opencode.setup(opts)
	end,
}
