-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Split default
vim.opt.splitbelow = true

-- Space instead of tab (recommended)
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Paste to clipboard
vim.opt.clipboard = "unnamedplus"

-- Limits the scroll (test)
-- vim.opt.scrolloff = 999

-- Set leader key
vim.g.mapleader = " "

-- For better VISUAL BLOCK mode experience
vim.opt.virtualedit = "block"

-- To visualize changes with substitution (%s)
vim.opt.inccommand = "split"

-- To ignore upper or lower case in autocompletion
vim.opt.ignorecase = true

-- For better color management on the terminal
vim.opt.termguicolors = true

-- For Obsidian Visulization 
vim.opt_local.conceallevel = 2

-- Corrector en español
vim.api.nvim_create_augroup('MarkdownSpell', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  command = 'setlocal spell spelllang=en_us,es',
  group = 'MarkdownSpell'
})
