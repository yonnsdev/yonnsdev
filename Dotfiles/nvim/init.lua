require('plugins')

-- legacy options
vim.cmd([[
	so ~/.config/nvim/legacy.vim
]])


-- vim plugin configurations
vim.cmd([[
    so ~/.config/nvim/lua/plugin/configs.vim
]])

vim.cmd([[
    so ~/.config/nvim/lua/plugin/coc.vim
]])


-- lua plugin configs
require('plugin.configs.lualine')
require('plugin.configs.telescope')
