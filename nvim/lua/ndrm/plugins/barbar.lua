return {
	"romgrk/barbar.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- ikon untuk buffer
	},
	init = function()
		vim.g.barbar_auto_setup = false -- biar kita atur manual
	end,
	opts = {},
	config = function()
		-- === Gruvbox palette ===
		local bg = "#1d2021" -- background utama
		local bg_soft = "#282828"
		local bg_sel = "#32302f"
		local fg = "#ebdbb2"
		local fg_muted = "#928374"
		local yellow = "#fabd2f"
		local orange = "#fe8019"

		local function set_barbar_highlights()
			vim.api.nvim_set_hl(0, "BufferCurrent", {
				bg = bg_sel,
				fg = fg,
				bold = true,
			})

			vim.api.nvim_set_hl(0, "BufferCurrentIndex", {
				bg = bg_sel,
				fg = yellow,
			})

			vim.api.nvim_set_hl(0, "BufferCurrentMod", {
				bg = bg_sel,
				fg = orange,
			})

			vim.api.nvim_set_hl(0, "BufferInactive", {
				bg = bg,
				fg = fg_muted,
			})

			vim.api.nvim_set_hl(0, "BufferInactiveIndex", {
				bg = bg,
				fg = "#665c54",
			})

			vim.api.nvim_set_hl(0, "BufferVisible", {
				bg = bg_soft,
				fg = fg_muted,
			})

			vim.api.nvim_set_hl(0, "BufferTabpageFill", {
				bg = bg,
			})
		end

		-- apply langsung
		set_barbar_highlights()

		-- apply ulang setiap colorscheme load
		vim.api.nvim_create_autocmd("ColorScheme", {
			callback = set_barbar_highlights,
		})
		require("barbar").setup({
			animation = true,
			auto_hide = false,
			tabpages = true,
			clickable = true,
		})
	end,
}
