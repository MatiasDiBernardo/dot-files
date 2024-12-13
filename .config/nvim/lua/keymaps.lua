-- Remaps to save and quit
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':wqa<CR>', { noremap = true, silent = true })

-- Remaps to enter normal mode
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = true })

-- Buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>z", ":bd<cr>")
vim.keymap.set("n", "<leader>ml", ":b#<cr>")

-- Remap vertical and horizontal split
vim.api.nvim_set_keymap('n', '<Leader>v', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h', ':split<CR>', { noremap = true, silent = true })

-- Remap to move between splits
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })

-- Delete without override main buffer (send it to void buffer)
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', { noremap = true, silent = true })

-- Clear comments from windows to linux(better to just use <C+v>)
vim.keymap.set("n", "<leader>mc", ":%s/\r$//<cr>")

-- Markdown render preview
vim.keymap.set("n", "<leader>mr", ":RenderMarkdown toggle<cr>")

