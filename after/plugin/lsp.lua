local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls'
})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})


vim.diagnostic.config({
  virtual_text = true,
})
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local on_attach = function(client, bufnr)
  -- format on save --
  if client.server_capabilities.documentFormattingProvider then
    vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

    --vim.api.nvim_create_autocmd("BufWritePre", {
      --group = vim.api.nvim_create_augroup("Format", { clear = true }),
      --buffer = bufnr,
      --callback = function() vim.lsp.buf.format() end
    --})
  end
  if client.name == "eslint" then
    vim.cmd.LspStop('eslint')
    return
  end



  end

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}


lsp.setup()
