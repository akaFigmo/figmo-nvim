-- vim.keymap.set(
--   mode, -- string | table
--   lhs,  -- string
--   rhs,  -- string | function
--   opts  -- table (optional)
-- )

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {desc = 'Open diagnostic [Q]uickfix list'})
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>', {desc = ':Ex'})
