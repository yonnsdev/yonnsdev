require('plugins')

-- legacy options
vim.cmd([[
	so ~/.config/nvim/legacy.vim
]])


-- vim plugin configurations
vim.cmd([[
    so ~/.config/nvim/configs.vim
]])

-- lua plugin configs
require('configs.autopairs')
require('configs.lsp')
require('configs.lualine')
require('configs.nvimcmp')
require('configs.treesitter')
