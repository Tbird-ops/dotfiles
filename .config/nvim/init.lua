-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Oil: the filesystem editor
require("oil").setup()

-- Ty: Astral Python Type checker and language server
vim.lsp.enable("ty")

-- Ruff: Astra Python Linter and formatter
vim.lsp.enable("ruff")
