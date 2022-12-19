local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

map('n', '<Leader>l', ':set list! list?<CR>', opts)
