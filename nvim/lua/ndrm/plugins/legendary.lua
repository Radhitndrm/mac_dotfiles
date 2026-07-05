return {
	"mrjones2014/legendary.nvim",
	config = function()
		local legendary = require("legendary")

		local keymaps = {
			-- =========================================================
			-- 1.  JENDELA / WINDOW
			-- =========================================================
			{ "<leader>h",       "<C-w>h",           description = "Fokus jendela kiri",     mode = "n" },
			{ "<leader>l",       "<C-w>l",           description = "Fokus jendela kanan",    mode = "n" },
			{ "<leader>j",       "<C-w>j",           description = "Fokus jendela bawah",    mode = "n" },
			{ "<leader>k",       "<C-w>k",           description = "Fokus jendela atas",     mode = "n" },
			{ "<leader>v",       ":vsplit<CR>",      description = "Split vertikal",         mode = "n" },
			{ "<leader>x",       ":close<CR>",       description = "Tutup jendela",           mode = "n" },
			{ "<leader>e",       ":Neotree toggle<CR>", description = "Toggle Neo-tree",     mode = "n" },

			-- =========================================================
			-- 2.  BUFFER / FILE
			-- =========================================================
			{ "<M-s>",           ":w<CR>",                   description = "Simpan file",             mode = "n" },
			{ "<M-q>",           ":q<CR>",                   description = "Keluar (quit)",           mode = "n" },
			{ "<M-S-q>",         ":q!<CR>",                  description = "Paksa keluar",            mode = "n" },
			{ "<M-o>",           "<C-^>",                    description = "Beralih ke file sebelumnya", mode = "n" },
			{ "vv",              "ggVG",                     description = "Pilih seluruh buffer",    mode = "n" },

			-- =========================================================
			-- 3.  CARI / TELESCOPE
			-- =========================================================
			{ "<M-f>",           "<cmd>Telescope find_files<CR>",  description = "Cari file",                 mode = "n" },
			{ "<M-g>",           "<cmd>Telescope live_grep<CR>",   description = "Cari teks (live grep)",     mode = "n" },
			{ "<M-b>",           "<cmd>Telescope buffers<CR>",     description = "Daftar buffer",             mode = "n" },
			{ "<M-p>",           "<cmd>Telescope recent_files<CR>", description = "File terbaru (recent)",    mode = "n" },
			{ "<leader>sh",      "<cmd>Telescope help_tags<CR>",   description = "Cari bantuan",              mode = "n" },
			{ "<leader>sk",      "<cmd>Telescope keymaps<CR>",     description = "Cari shortcut",             mode = "n" },
			{ "<leader>ss",      "<cmd>Telescope builtin<CR>",     description = "Pilih Telescope",           mode = "n" },
			{ "<leader>sw",      "<cmd>Telescope grep_string<CR>", description = "Cari kata di bawah kursor", mode = "n" },
			{ "<leader>sg",      "<cmd>Telescope live_grep<CR>",   description = "Cari dengan grep",          mode = "n" },
			{ "<leader>sd",      "<cmd>Telescope diagnostics<CR>", description = "Cari diagnostik",           mode = "n" },
			{ "<leader>sr",      "<cmd>Telescope resume<CR>",      description = "Lanjutkan pencarian",       mode = "n" },
			{ "<leader>s.",      "<cmd>Telescope oldfiles<CR>",    description = "File lama (oldfiles)",      mode = "n" },
			{ "<leader>sn",      "<cmd>Telescope find_files cwd=~/.config/nvim<CR>", description = "Cari file konfigurasi Neovim", mode = "n" },
			{ "<leader><leader>","<cmd>Telescope buffers<CR>",     description = "Cari buffer yang terbuka",  mode = "n" },
			{ "<leader>/",       "<cmd>Telescope current_buffer_fuzzy_find<CR>", description = "Cari di buffer saat ini", mode = "n" },
			{ "<leader>s/",      "<cmd>Telescope live_grep grep_open_files=true<CR>", description = "Grep di file yang terbuka", mode = "n" },

			-- =========================================================
			-- 4.  LSP
			-- =========================================================
			{ "grn",             vim.lsp.buf.rename,                   description = "Rename simbol",                  mode = "n" },
			{ "gra",             vim.lsp.buf.code_action,              description = "Code action",                    mode = { "n", "x" } },
			{ "grr",             ":Telescope lsp_references<CR>",     description = "Cari referensi",                 mode = "n" },
			{ "gri",             ":Telescope lsp_implementations<CR>", description = "Cari implementasi",             mode = "n" },
			{ "gj",              ":Telescope lsp_definitions<CR>",     description = "Cari definisi",                  mode = "n" },
			{ "grD",             vim.lsp.buf.declaration,              description = "Cari deklarasi",                 mode = "n" },
			{ "gO",              ":Telescope lsp_document_symbols<CR>", description = "Simbol di dokumen",            mode = "n" },
			{ "gW",              ":Telescope lsp_dynamic_workspace_symbols<CR>", description = "Simbol di workspace", mode = "n" },
			{ "grt",             ":Telescope lsp_type_definitions<CR>", description = "Cari definisi tipe",           mode = "n" },
			{ "<leader>th",      ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>", description = "Toggle inlay hints", mode = "n" },
			{ "<M-r>",           ":LspRestart<CR>",                    description = "Restart LSP",                   mode = "n" },
			{ "<leader>q",       "<cmd>lua local w=vim.fn.getloclist(0,{winid=0}).winid; if w~=0 then vim.cmd('lclose') else vim.diagnostic.setloclist() vim.cmd('lopen') end<CR>", description = "Toggle daftar diagnostik", mode = "n" },

			-- =========================================================
			-- 5.  GIT (GITSIGNS)
			-- =========================================================
			{ "]c",              ":Gitsigns next_hunk<CR>",             description = "Git: perubahan berikutnya",     mode = "n" },
			{ "[c",              ":Gitsigns prev_hunk<CR>",             description = "Git: perubahan sebelumnya",     mode = "n" },
			{ "<leader>hs",      ":Gitsigns stage_hunk<CR>",            description = "Git: stage hunk",               mode = { "n", "v" } },
			{ "<leader>hr",      ":Gitsigns reset_hunk<CR>",            description = "Git: reset hunk",               mode = { "n", "v" } },
			{ "<leader>hS",      ":Gitsigns stage_buffer<CR>",          description = "Git: stage seluruh buffer",     mode = "n" },
			{ "<leader>hu",      ":Gitsigns undo_stage_hunk<CR>",       description = "Git: undo stage hunk",           mode = "n" },
			{ "<leader>hR",      ":Gitsigns reset_buffer<CR>",          description = "Git: reset seluruh buffer",     mode = "n" },
			{ "<leader>hp",      ":Gitsigns preview_hunk<CR>",          description = "Git: preview hunk",             mode = "n" },
			{ "<leader>hb",      ":Gitsigns blame_line<CR>",            description = "Git: blame baris",              mode = "n" },
			{ "<leader>hd",      ":Gitsigns diffthis<CR>",              description = "Git: diff terhadap index",      mode = "n" },
			{ "<leader>hD",      ":Gitsigns diffthis @<CR>",            description = "Git: diff terhadap commit terakhir", mode = "n" },
			{ "<leader>tb",      ":Gitsigns toggle_current_line_blame<CR>", description = "Toggle git blame baris",   mode = "n" },
			{ "<leader>tD",      ":Gitsigns toggle_deleted<CR>",        description = "Toggle tampilkan baris terhapus", mode = "n" },

			-- =========================================================
			-- 6.  HARPOON
			-- =========================================================
			{ "<leader>a",       "<cmd>lua require('harpoon.mark').add_file()<CR>",    description = "Harpoon: tandai file",       mode = "n" },
			{ "<leader>1",       "<cmd>lua require('harpoon.ui').nav_file(1)<CR>",     description = "Harpoon: buka file 1",       mode = "n" },
			{ "<leader>2",       "<cmd>lua require('harpoon.ui').nav_file(2)<CR>",     description = "Harpoon: buka file 2",       mode = "n" },
			{ "<leader>3",       "<cmd>lua require('harpoon.ui').nav_file(3)<CR>",     description = "Harpoon: buka file 3",       mode = "n" },
			{ "<leader>4",       "<cmd>lua require('harpoon.ui').nav_file(4)<CR>",     description = "Harpoon: buka file 4",       mode = "n" },
			{ "<leader>5",       "<cmd>lua require('harpoon.ui').nav_file(5)<CR>",     description = "Harpoon: buka file 5",       mode = "n" },
			{ "<leader>6",       "<cmd>lua require('harpoon.ui').nav_file(6)<CR>",     description = "Harpoon: buka file 6",       mode = "n" },
			{ "<leader>H",       "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", description = "Harpoon: buka menu",     mode = "n" },
			{ "<leader>hd",      "<cmd>lua require('harpoon.mark').rm_file()<CR>",     description = "Harpoon: hapus tanda file",  mode = "n" },
			{ "<leader>hc",      "<cmd>lua require('harpoon.mark').clear_all()<CR>",   description = "Harpoon: hapus semua tanda", mode = "n" },

			-- =========================================================
			-- 7.  TERMINAL
			-- =========================================================
			{ "<M-\\>",          "<cmd>ToggleTerm<CR>",                description = "Toggle terminal",               mode = "n" },
			{ "<C-\\>",          "<cmd>w<CR>:belowright split | resize 15 | terminal python3 %<CR>", description = "Jalankan file Python", mode = "n" },

			-- =========================================================
			-- 8.  COPILOT / AI
			-- =========================================================
			{ "<M-CR>",          'copilot#Accept("<CR>")',            description = "Terima saran Copilot",          mode = "i", opts = { expr = true, noremap = true, silent = true } },
			{ "<leader>aa",      "<cmd>CopilotChat toggle<CR>",        description = "Toggle CopilotChat",            mode = { "n", "v" } },
			{ "<leader>ax",      "<cmd>CopilotChat reset<CR>",         description = "Reset CopilotChat",             mode = { "n", "v" } },
			{ "<leader>aq",      "<cmd>lua local i=vim.fn.input('Quick Chat: '); if i~='' then require('CopilotChat').ask(i) end<CR>", description = "Quick Chat (Copilot)", mode = { "n", "v" } },
			{ "<leader>ap",      "<cmd>lua require('CopilotChat.integrations.telescope').pick(require('CopilotChat.actions').prompt_actions())<CR>", description = "Prompt actions (Copilot)", mode = "n" },
			{ "<leader>ap",      "<cmd>lua require('CopilotChat.integrations.telescope').pick(require('CopilotChat.actions').prompt_actions({selection = require('CopilotChat.select').visual}))<CR>", description = "Prompt actions (Copilot, visual)", mode = "x" },
			{ "<leader>ar",      "<cmd>CopilotChat ask Run this command in a terminal<CR>", description = "Jalankan perintah (Copilot)", mode = "v" },
			{ "<leader>at",      "<cmd>CopilotChat open_terminal<CR>", description = "Buka terminal Copilot",         mode = "n" },

			-- =========================================================
			-- 9.  OPENCODE
			-- =========================================================
			{ "<leader>og",      function() require("opencode.api").toggle() end, description = "Toggle Opencode",               mode = { "n", "v" } },
			{ "<leader>oa",      function() require("opencode.api").toggle() end, description = "Toggle Opencode (alias)",       mode = { "n", "v" } },

			-- =========================================================
			-- 10. CODESNAP
			-- =========================================================
			{ "<leader>cs",      "<cmd>CodeSnap<CR>",                 description = "CodeSnap: salin ke clipboard",  mode = "v" },
			{ "<leader>cS",      "<cmd>CodeSnapSave<CR>",             description = "CodeSnap: simpan ke file",      mode = "v" },

			-- =========================================================
			-- 11. SCROLL & SEARCH UX
			-- =========================================================
			{ "<C-d>",           "<C-d>zz",                          description = "Scroll bawah + fokus tengah",   mode = "n" },
			{ "<C-u>",           "<C-u>zz",                          description = "Scroll atas + fokus tengah",    mode = "n" },
			{ "n",               "nzzzv",                            description = "Cari berikutnya + fokus tengah", mode = "n" },
			{ "N",               "Nzzzv",                            description = "Cari sebelumnya + fokus tengah", mode = "n" },
			{ "<Esc>",           "<cmd>nohlsearch<CR>",              description = "Hapus highlight pencarian",     mode = "n" },

			-- =========================================================
			-- 12. GERAK DASAR
			-- =========================================================
			{ "h",               "h",                                description = "Gerak ke kiri",                 mode = { "n", "v" } },
			{ "j",               "j",                                description = "Gerak ke bawah",                mode = { "n", "v" } },
			{ "k",               "k",                                description = "Gerak ke atas",                 mode = { "n", "v" } },
			{ "l",               "l",                                description = "Gerak ke kanan",                mode = { "n", "v" } },
			{ "$",               "$",                                description = "Ke akhir baris",                mode = { "n", "v" } },
			{ "%",               "%",                                description = "Lompat pasangan kurung/kurawal", mode = { "n", "v" } },
			{ "#",               "#",                                description = "Cari kata (ke belakang)",       mode = "n" },

			-- =========================================================
			-- 13. MODE INSERT
			-- =========================================================
			{ "a",               "a",                                description = "Insert setelah kursor",         mode = "n" },
			{ "i",               "i",                                description = "Insert sebelum kursor",         mode = "n" },
			{ "A",               "A",                                description = "Insert di akhir baris",         mode = "n" },
			{ "I",               "I",                                description = "Insert di awal baris",          mode = "n" },
			{ "jj",              "<Esc>",                            description = "Keluar dari mode insert",       mode = "i" },

			-- =========================================================
			-- 14. CLIPBOARD
			-- =========================================================
			{ "<leader>p",       [["_dP]],                           description = "Tempel tanpa timpa clipboard",  mode = { "x", "v" } },
			{ "<leader>y",       [["+y]],                            description = "Salin ke clipboard sistem",     mode = { "n", "v" } },
			{ "<leader>Y",       [["+Y]],                            description = "Salin baris ke clipboard",      mode = "n" },
			{ "<leader>d",       [["_d]],                            description = "Hapus tanpa timpa clipboard",   mode = { "n", "v" } },

			-- =========================================================
			-- 15. VISUAL MODE
			-- =========================================================
			{ "y",               "y",                                description = "Salin pilihan",                 mode = "v" },
			{ "Y",               "Y",                                description = "Salin baris pilihan",           mode = "v" },
			{ "p",               "p",                                description = "Tempel setelah kursor",         mode = "v" },
			{ "P",               "P",                                description = "Tempel sebelum kursor",         mode = "v" },
			{ "J",               ":m '>+1<CR>gv=gv",                 description = "Geser blok ke bawah",           mode = "v" },
			{ "K",               ":m '<-2<CR>gv=gv",                 description = "Geser blok ke atas",            mode = "v" },
			{ "ggVG",            "ggVG",                             description = "Pilih seluruh buffer",          mode = "n" },

			-- =========================================================
			-- 16. TEXT OBJECTS / MANIPULASI
			-- =========================================================
			{ "yiw",             "yiw",                              description = "Salin kata (inner word)",       mode = { "n", "v" } },
			{ "ciw",             "ciw",                              description = "Ganti kata (inner word)",       mode = "n" },
			{ "diw",             "diw",                              description = "Hapus kata (inner word)",       mode = "n" },
			{ "cit",             "cit",                              description = "Ganti isi tag",                 mode = "n" },
			{ "ci(",             "ci(",                              description = "Ganti isi kurung",              mode = "n" },
			{ "ci)",             "ci)",                              description = "Ganti isi kurung",              mode = "n" },
			{ "ci[",             "ci[",                              description = "Ganti isi bracket",             mode = "n" },
			{ "ci]",             "ci]",                              description = "Ganti isi bracket",             mode = "n" },
			{ "yyp",             "yyp",                              description = "Duplikasi baris",               mode = "n" },
			{ "J",               "mzJ`z",                            description = "Gabung baris + jaga kursor",    mode = "n" },
			{ ";;",              "mzA;<Esc>`z",                      description = "Tambah ; di akhir baris",       mode = "n" },
			{ ",,",              "mzA,<Esc>`z",                      description = "Tambah , di akhir baris",       mode = "n" },

			-- =========================================================
			-- 17. FORMAT (CONFORM)
			-- =========================================================
			{ "<leader>f",       ":lua require('conform').format({ async = true, lsp_format = 'fallback' })<CR>", description = "Format buffer", mode = { "n", "v" } },

			-- =========================================================
			-- 18. DEBUG (DAP)
			-- =========================================================
			{ "<F5>",            ":lua require('dap').continue()<CR>",                    description = "Debug: Start/Continue",         mode = "n" },
			{ "<F1>",            ":lua require('dap').step_into()<CR>",                   description = "Debug: Step Into",             mode = "n" },
			{ "<F2>",            ":lua require('dap').step_over()<CR>",                   description = "Debug: Step Over",             mode = "n" },
			{ "<F3>",            ":lua require('dap').step_out()<CR>",                    description = "Debug: Step Out",              mode = "n" },
			{ "<F7>",            ":lua require('dapui').toggle()<CR>",                    description = "Debug: Toggle DAP UI",         mode = "n" },
			{ "<leader>b",       ":lua require('dap').toggle_breakpoint()<CR>",           description = "Debug: Toggle Breakpoint",     mode = "n" },
			{ "<leader>B",       ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", description = "Debug: Set Conditional Breakpoint", mode = "n" },

			-- =========================================================
			-- 19. PHP NAMESPACE
			-- =========================================================
			{ "<leader>la",      "<cmd>Php classes<cr>",              description = "PHP: daftar class",             mode = "n" },
			{ "<leader>lc",      "<cmd>Php class<cr>",                description = "PHP: buat class",              mode = "n" },
			{ "<leader>ln",      "<cmd>Php namespace<cr>",            description = "PHP: buat namespace",          mode = "n" },
			{ "<leader>ls",      "<cmd>Php sort<cr>",                 description = "PHP: sort use statements",     mode = "n" },

			-- =========================================================
			-- 20. NEO-TREE (ALT)
			-- =========================================================
			{ "<M-e>",           "<cmd>Neotree toggle<CR>",           description = "Toggle Neo-tree (alt)",        mode = "n" },

			-- =========================================================
			-- 21. MARKDOWN
			-- =========================================================
			{ "<leader>mp",      "<cmd>MarkdownPreviewToggle<CR>",   description = "Toggle preview Markdown",       mode = "n" },

			-- =========================================================
			-- 22. TROUBLE (DIAGNOSTICS PANEL)
			-- =========================================================
			{ "<leader>xx",      "<cmd>Trouble diagnostics toggle<CR>",           description = "Trouble: toggle panel diagnostik",       mode = "n" },
			{ "<leader>xw",      "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", description = "Trouble: diagnostik buffer saat ini", mode = "n" },
			{ "<leader>xr",      "<cmd>Trouble lsp references toggle<CR>",        description = "Trouble: LSP references",                mode = "n" },

			-- =========================================================
			-- 23. NEOTEST
			-- =========================================================
			{ "<leader>tn",      ":lua require('neotest').run.run()<CR>",        description = "Neotest: run test terdekat",             mode = "n" },
			{ "<leader>tf",      ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", description = "Neotest: run seluruh file test", mode = "n" },
			{ "<leader>tr",      ":lua require('neotest').run.run_last()<CR>",   description = "Neotest: run test terakhir",            mode = "n" },
			{ "<leader>ts",      ":lua require('neotest').summary.toggle()<CR>", description = "Neotest: toggle ringkasan test",         mode = "n" },
			{ "<leader>to",      ":lua require('neotest').output.open()<CR>",    description = "Neotest: buka output test",             mode = "n" },

			-- =========================================================
			-- 24. LAZYGIT
			-- =========================================================
			{ "<leader>lg",      "<cmd>LazyGit<CR>",                             description = "LazyGit: buka Git TUI",                 mode = "n" },

			-- =========================================================
			-- 25. LEGENDARY SENDIRI
			-- =========================================================
			{ "<leader>L",       ":lua require('legendary').find({ sources = { 'keymaps' } })<CR>", description = "Tampilkan daftar shortcut", mode = "n" },
		}

		legendary.setup({
			keymaps = keymaps,
			select_prompt = "Pilih Shortcut: ",
			include_builtin = false,
			include_legendary = false,
		})

		vim.keymap.set("n", "<leader>L", function()
			legendary.find({ sources = { "keymaps" } })
		end, { desc = "Tampilkan semua shortcut" })
	end,
}
