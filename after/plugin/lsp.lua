--local lsp = require("lsp-zero")

--lsp.preset("recommended")

--lsp.ensure_installed({
  --'tsserver',
  --'eslint',
  --'sumneko_lua',
--})

---- Fix Undefined global 'vim'
--lsp.configure('sumneko_lua', {
  --settings = {
    --Lua = {
      --diagnostics = {
        --globals = { 'vim' }
      --}
    --}
  --}
--})


----lsp.configure('intelephense', {
----settings = {
----intelephense = {
----files = {
----exclude = { '' }
----}
----}
----}
----})
----local cmp = require('cmp')
----local cmp_select = { behavior = cmp.SelectBehavior.Select }
----local cmp_mappings = lsp.defaults.cmp_mappings({
  ----['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ----['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ------ ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ------ ["<C-Space>"] = cmp.mapping.complete(),
----})

---- disable completion with tab
---- this helps with copilot setup
----cmp_mappings['<Tab>'] = nil
----cmp_mappings['<S-Tab>'] = nil

--lsp.setup_nvim_cmp({
  --mapping = cmp_mappings
--})

--lsp.set_preferences({
  --suggest_lsp_servers = true,
  --setup_servers_on_start = true,
  --cmp_capabilities = true,
  --manage_nvim_cmp = true,
  --sign_icons = {
    --error = 'E',
    --warn = 'W',
    --hint = 'H',
    --info = 'I'
  --}
--})

--lsp.on_attach(function(client, bufnr)
  --local opts = { buffer = bufnr, remap = false }
  ---- format on save
  ----if client.server_capabilities.documentFormattingProvider then
    ----vim.api.nvim_create_autocmd("BufWritePre", {
      ----group = vim.api.nvim_create_augroup("Format", { clear = true }),
      ----buffer = bufnr,
      ----callback = function() vim.lsp.buf.formatting_seq_sync() end
    ----})
  ----end
  --if client.name == "eslint" then
    --vim.cmd.LspStop('eslint')
    --return
  --end

  --vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  --vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  --vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  --vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  --vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  --vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  --vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  --vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, opts)
  --vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  --vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
--end)

--lsp.setup()

--vim.diagnostic.config({
  --virtual_text = true,
--})
--local status, nvim_lsp = pcall(require, "lspconfig")
--if (not status) then return end

--local protocol = require('vim.lsp.protocol')

--local on_attach = function(client, bufnr)
  ---- format on save
  --if client.server_capabilities.documentFormattingProvider then
    --vim.api.nvim_create_autocmd("BufWritePre", {
      --group = vim.api.nvim_create_augroup("Format", { clear = true }),
      --buffer = bufnr,
      --callback = function() vim.lsp.buf.formatting_seq_sync() end
    --})
  --end
--end

---- TypeScript
--nvim_lsp.tsserver.setup {
  --on_attach = on_attach,
  --filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  --cmd = { "typescript-language-server", "--stdio" }
--}
