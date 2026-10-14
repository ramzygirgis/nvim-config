-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
vim.opt.termguicolors = true

vim.lsp.config("gopls", {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork" },
  root_markers = { "go.work", "go.mod", ".git" },
})

vim.lsp.enable("gopls")
