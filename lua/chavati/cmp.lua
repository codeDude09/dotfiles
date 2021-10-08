local vim = vim
local lspkind = require 'lspkind'
local cmp = require 'cmp'


cmp.setup({
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  snippet = {
    expand = function (args)
    	vim.fn["vsnip#anonymous"](args.body)
    end
  },
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })
  },
  sources = {
    {name = 'nvim_lsp'},
    {name = 'vsnip'},
    {name = 'path'},
    {name = 'buffer'}
  },
  formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 50, menu = {
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      luasnip = "[LuaSnip]",
      nvim_lua = "[Lua]",
      latex_symbols = "[Latex]",
    }})
  }
})
