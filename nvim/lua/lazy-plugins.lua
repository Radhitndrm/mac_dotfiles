return require("lazy").setup({

	-- Indentation detection
	"NMAC427/guess-indent.nvim",

	-- Git decorations and signs
	require("ndrm.plugins.gitsigns"),

	-- Fuzzy finder
	require("ndrm.plugins.telescope"),

	-- LSP configurations
	require("ndrm.plugins.lspconfig"),

	-- LazyGit
	require("ndrm.plugins.lazygit"),

	-- Test runner
	require("ndrm.plugins.neotest"),

	-- Pretty diagnostics
	require("ndrm.plugins.trouble"),

	-- Surround text objects
	require("ndrm.plugins.vim-surround"),

	-- Match pairs like % for HTML, C, etc.
	require("ndrm.plugins.vim-matchit"),

	-- Code formatting
	require("ndrm.plugins.conform"),

	-- Discord Presence
	require("ndrm.plugins.presence"),

	-- Autocompletion
	require("ndrm.plugins.blink-cmp"),

	-- Highlight colors in buffer
	require("ndrm.plugins.highlight-color"),

	-- Auto close and rename tags
	require("ndrm.plugins.autotag"),

	-- Custom namespace plugin
	require("ndrm.plugins.namespace"),

	-- File marks and navigation
	require("ndrm.plugins.harpoon"),

	-- GitHub Copilot AI
	require("ndrm.plugins.copilot"),
	require("ndrm.plugins.copilot-chat"),

	-- Multiple cursors
	require("ndrm.plugins.vim-visual-multi"),

	-- Terminal integration
	require("ndrm.plugins.toggleterm"),

	-- Comment string for languages
	require("ndrm.plugins.commentstring"),

	-- Colorscheme
	require("ndrm.plugins.colorscheme"),

	-- TODO/FIXME highlights
	require("ndrm.plugins.todo-comments"),

	-- Mini plugin collection
	require("ndrm.plugins.mini"),

	-- Markdown preview
	require("ndrm.plugins.markdown-preview"),

	-- Treesitter for syntax highlighting and text objects
	require("ndrm.plugins.treesitter"),

	-- Linting
	require("ndrm.plugins.lint"),

	-- Autopairs
	require("ndrm.plugins.autopairs"),

	-- File explorer
	require("ndrm.plugins.neo-tree"),

	-- Statusline
	require("ndrm.plugins.lualine"),

	-- notify
	-- require("ndrm.plugins.nvim-notify"),

	-- legendary
	require("ndrm.plugins.legendary"),

	-- CodeSnap
	require("ndrm.plugins.codesnap"),

	-- Opencode AI
	require("ndrm.plugins.opencode"),
	-- ===============================
	{
		"glepnir/dashboard-nvim",
		lazy = false, -- langsung load saat startup
		config = function()
			require("ndrm.plugins.startpage") -- plugin lokal startpage
		end,
	},
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
