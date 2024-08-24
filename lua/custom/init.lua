-- Custom configuration file for Vim

-- Bind 'kj' to <ESC> in insert mode
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = true })

-- Bind '+' to folding toggle 'za'
-- Bind '-' to create fold 'zf'
vim.api.nvim_set_keymap('n', '+', 'za', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '-', 'zf', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '-', 'zf', { noremap = true, silent = true })

-- -- Set clipboard provider
-- vim.g.clipboard = {
--   name = 'OSC 52',
--   copy = {
--     ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
--   },
--   paste = {
--     ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
--   },
-- }

