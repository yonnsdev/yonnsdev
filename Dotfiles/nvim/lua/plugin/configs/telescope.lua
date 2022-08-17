require('telescope').setup({
    defaults = {
        layout_config = {
            -- future layout changes
        }
    }
})

-- Keybindings
vim.api.nvim_set_keymap('n', '<Leader>ft', ':Telescope<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fl', ':Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fc', ':Telescope commands<CR>', { noremap = true, silent = true })
