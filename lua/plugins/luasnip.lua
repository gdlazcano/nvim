vim.cmd [[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

local ls = require"luasnip"

ls.config.set_config({
  -- Don't store snippet history for less overhead
  history = false,
  -- Allow autotrigger snippets
  enable_autosnippets = true,
  -- For equivalent of UltiSnips visual selection
  store_selection_keys = "<Tab>",
  -- Event on which to check for exiting a snippet's region
  region_check_events = 'InsertEnter',
  delete_check_events = 'InsertLeave',
})

require('luasnip.loaders.from_lua').load({ paths = "~/Local Settings/nvim/LuaSnip/all.lua" })
