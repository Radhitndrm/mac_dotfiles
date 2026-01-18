return {
	"ThePrimeagen/harpoon",
	lazy = false,
	config = true,
	keys = {
		-- Toggle mark (mark / unmark file saat ini)
		{
			"<leader>a",
			function()
				local mark = require("harpoon.mark")
				local file = vim.fn.expand("%:p")

				if mark.get_index_of(file) then
					mark.rm_file()
				else
					mark.add_file()
				end
			end,
			desc = "Harpoon toggle mark",
		},

		-- Navigate marked files
		{ "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = "Harpoon file 1" },
		{ "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = "Harpoon file 2" },
		{ "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = "Harpoon file 3" },
		{ "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", desc = "Harpoon file 4" },
		{ "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", desc = "Harpoon file 5" },
		{ "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<CR>", desc = "Harpoon file 6" },

		-- Harpoon menu
		{ "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Harpoon menu" },

		-- Remove mark for current file
		{
			"<leader>hd",
			function()
				require("harpoon.mark").rm_file()
			end,
			desc = "Harpoon remove current file",
		},

		-- Clear ALL harpoon marks
		{
			"<leader>hc",
			function()
				require("harpoon.mark").clear_all()
			end,
			desc = "Harpoon clear all marks",
		},
	},
}
