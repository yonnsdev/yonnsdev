require('plugins')

-- legacy options
vim.cmd([[
	so ~/.config/nvim/vimscript/legacy.vim
]])


-- vim plugin configurations
vim.cmd([[
    so ~/.config/nvim/vimscript/configs.vim
]])

-- vim.cmd([[
--     so ~/.config/nvim/lua/plugin/coc.vim
-- ]])


-- lua plugin configs
require('configs.autopairs')
require('configs.lsp')
require('configs.lualine')
require('configs.nvimcmp')
require('configs.telescope')
require('configs.treesitter')
