-- =========================================================
-- 🧠 NEOVIM KEYMAPS — TMUX FRIENDLY POWER SETUP
-- =========================================================

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =========================================================
-- 🚪 BASIC
-- =========================================================

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- Exit terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Insert mode escape
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Alternate file
map("n", "<M-o>", "<C-^>", { desc = "Alternate file" })

-- =========================================================
-- 💾 FILE / BUFFER
-- =========================================================

map("n", "<M-s>", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<M-q>", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<M-S-q>", "<cmd>q!<CR>", { desc = "Force quit" })

-- Select all
map("n", "vv", "ggVG", { desc = "Select all" })

-- =========================================================
-- 🧭 WINDOW / SPLIT
-- =========================================================

map("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>x", "<cmd>close<CR>", { desc = "Close window" })

map("n", "<leader>h", "<C-w>h", { desc = "Focus left" })
map("n", "<leader>j", "<C-w>j", { desc = "Focus down" })
map("n", "<leader>k", "<C-w>k", { desc = "Focus up" })
map("n", "<leader>l", "<C-w>l", { desc = "Focus right" })

-- =========================================================
-- 🧠 SCROLL & SEARCH UX
-- =========================================================

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- =========================================================
-- ✂️ EDITING MAGIC
-- =========================================================

-- Join line keep cursor
map("n", "J", "mzJ`z")

-- Move selected block
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Semicolon / comma
map("n", ";;", "mzA;<Esc>`z", { desc = "Append ;" })
map("n", ",,", "mzA,<Esc>`z", { desc = "Append ," })

-- Paste without overwrite
map("x", "<leader>p", [["_dP]])

-- Clipboard
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({ "n", "v" }, "<leader>d", [["_d]])

-- =========================================================
-- 🔍 TELESCOPE / SEARCH
-- =========================================================

map("n", "<M-f>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<M-g>", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<M-b>", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })

-- =========================================================
-- 🧪 LSP / DIAGNOSTIC
-- =========================================================

map("n", "<leader>q", function()
	-- cek apakah loclist sedang terbuka di window aktif
	local winid = vim.fn.getloclist(0, { winid = 0 }).winid

	if winid ~= 0 then
		-- loclist terbuka → tutup
		vim.cmd("lclose")
	else
		-- loclist tertutup → isi diagnostic & buka
		vim.diagnostic.setloclist()
		vim.cmd("lopen")
	end
end, { desc = "Toggle diagnostic list" })
map("n", "<M-r>", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })

-- =========================================================
-- 🐍 RUN CURRENT PYTHON FILE
-- =========================================================

map("n", "<C-\\>", function()
	vim.cmd("w")
	local file = vim.fn.expand("%:p")
	vim.cmd(
		"belowright split | resize 15 | term bash -c "
			.. "\"printf '\\n=== Run: "
			.. file
			.. " ===\\n\\n'; python3 %; printf '\\n=== Done ===\\n'\""
	)
end, { desc = "Run Python file" })

-- =========================================================
-- 🤖 GITHUB COPILOT
-- =========================================================

vim.g.copilot_no_tab_map = true
map("i", "<M-CR>", 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true, desc = "Accept Copilot" })

-- =========================================================
-- 📸 CODE SNAP
-- =========================================================

map("v", "<leader>cs", "<cmd>CodeSnap<CR>", { desc = "CodeSnap copy" })
map("v", "<leader>cS", "<cmd>CodeSnapSave<CR>", { desc = "CodeSnap save" })

-- =========================================================
-- ✨ YANK HIGHLIGHT
-- =========================================================

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
