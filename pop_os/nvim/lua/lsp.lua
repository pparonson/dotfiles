-- print("lsp.lua")

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['C-p'] = cmp.mapping.select_prev_item(cmp_select),
  ['C-n'] = cmp.mapping.select_next_item(cmp_select),
  ['C-y'] = cmp.mapping.confirm({select = true}),
  ['C-Space'] = cmp.mapping.complete(),
})

-- make sure this servers are installed
-- see :help lsp-zero.ensure_installed()
lsp.ensure_installed({
  'lua_ls',
  'tsserver',
  'eslint',
  'rust_analyzer',
})

lsp.set_preferences({
  sign_icons = {}
})


-- don't initialize this language server
-- we will use rust-tools to setup rust_analyzer
lsp.skip_server_setup({'rust_analyzer'})

-- the function below will be executed whenever
-- a language server is attached to a buffer
lsp.on_attach(function(client, bufnr)
  -- print('Greetings from on_attach')
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, bufopts)
end)


-- configure lua language server for neovim
-- see :help lsp-zero.nvim_workspace()
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})

