-- Set leader key to SPACE
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Go back to Netrw
vim.keymap.set('n', '<leader>e', ':Explore<cr>', { desc = 'Go back to Netrw' })

-- Speed quit and write (update) 
vim.keymap.set('n', '<leader>q', ':q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>w', ':up<cr>', { desc = 'Update' }) -- Write only if changes are made

-- Spawn Mason
vim.keymap.set('n', '<leader>i', ':Mason<cr>', { desc = 'Open Mason window' })

-- Format current file
vim.keymap.set('n', '<leader>f', ':Format<cr>', { desc = 'Format current file' })
