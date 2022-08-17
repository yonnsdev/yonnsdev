-- Installs packer.nvim
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
    vim.cmd [[packadd packer.nvim]]
end

-- autocmd : Updates plugins whens file is modified
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Installed Plugins
return require('packer').startup(
    function(use)
        use 'wbthomason/packer.nvim'

        -- Themes & Color
        use 'morhetz/gruvbox'

        -- Editor Features
        use 'tpope/vim-surround'
        use 'tpope/vim-commentary'
        use 'tpope/vim-dispatch'
        use 'tpope/vim-fugitive'
        use 'preservim/nerdtree'
        use 'preservim/tagbar'
	use 'preservim/vimux'
        use 'sbdchd/neoformat'
        use 'easymotion/vim-easymotion'
        use {
            'neoclide/coc.nvim',
            branch = 'release'
        }
        use { -- Using instead of fzf
            'nvim-telescope/telescope.nvim',
            branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use {
            'nvim-lualine/lualine.nvim',
        }

        -- Additional Languages
        use 'Shirk/vim-gas' -- asm

        -- End of packer
        if packer_bootstrap then
            require('packer').sync()
        end
    end
)
