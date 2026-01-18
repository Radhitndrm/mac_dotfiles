return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local harpoon_mark = require("harpoon.mark")

		-- 🔖 Harpoon indicator
		local function harpoon_indicator()
			local bufname = vim.fn.expand("%:p")
			if bufname == "" then
				return ""
			end

			local index = harpoon_mark.get_index_of(bufname)
			if index ~= nil then
				return "󱡅 " .. index
			end
			return ""
		end

		require("lualine").setup({
			options = {
				theme = "auto",
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },

				-- ⬇️ tambahin di sini
				lualine_c = {
					"filename",
					harpoon_indicator,
				},

				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
