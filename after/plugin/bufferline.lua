vim.opt.termguicolors = true

require("bufferline").setup{
      options = {
      seperator_style = "slope",
      diagnostics = "nvim_lsp"
    }
}

