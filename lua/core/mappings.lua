vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float toggle<CR>', { silent = true })
vim.keymap.set('n', '<leader>o', ':Neotree git_status float toggle<CR>', { silent = true })


-- Emmet
vim.api.nvim_set_keymap('i', '<Tab>', 'emmet#expandAbbrIntelligent("\t")', 
                        { noremap = true, expr = true, silent = true })


-- Bufferline
-- Go to the previous buffer
vim.api.nvim_set_keymap('n', '<A-h>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Go to the next buffer
vim.api.nvim_set_keymap('n', '<A-l>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })

-- Close the current buffer
vim.api.nvim_set_keymap('n', '<A-w>', '<Cmd>bdelete<CR>', { noremap = true, silent = true })
