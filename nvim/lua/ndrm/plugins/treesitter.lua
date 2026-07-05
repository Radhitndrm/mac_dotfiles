return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
      local parsers = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }
      require('nvim-treesitter').setup()
      -- Install parsers asynchronously (requires tree-sitter CLI: brew install tree-sitter)
      require('nvim-treesitter').install(parsers)
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
