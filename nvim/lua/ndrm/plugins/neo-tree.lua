return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-tree/nvim-web-devicons",
			enabled = true,
		},
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<M-e>", "<cmd>Neotree toggle<CR>", desc = "Toggle NeoTree", silent = true },
	},
	opts = {
		close_if_last_window = true,
		popup_border_style = "rounded",
		enable_git_status = true,
		enable_diagnostics = true,
		sort_case_insensitive = true,

		default_component_configs = {
			container = {
				enable_character_fade = true,
			},
			indent = {
				indent_size = 2,
				padding = 1,
				with_markers = true,
				indent_marker = "│",
				last_indent_marker = "└",
				highlight = "NeoTreeIndentMarker",
			},
			icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "",
				default = "",
				highlight = "NeoTreeFileIcon",
			},
			modified = {
				symbol = "[+]",
				highlight = "NeoTreeModified",
			},
			git_status = {
				symbols = {
					added = "✚",
					modified = "",
					deleted = "✖",
					renamed = "➜",
					untracked = "★",
					ignored = "◌",
				},
			},
		},

		window = {
			position = "left",
			width = 35,
			mapping_options = {
				noremap = true,
				nowait = true,
			},
			mappings = {
				["<CR>"] = "open",
				["o"] = "open",
				["l"] = "open",
				["h"] = "close_node",

				["<space>"] = "toggle_node",
				["q"] = "close_window",
				["<leader>r"] = "refresh",
			},
		},

		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
			},
			follow_current_file = true,
			group_empty_dirs = true,
		},

		buffers = {
			follow_current_file = true,
			group_empty_dirs = true,
			show_unloaded = true,
		},

		git_status = {
			window = {
				position = "float",
				popup_border_style = "rounded",
			},
		},
	},
}
