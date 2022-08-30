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
        use 'projekt0n/github-nvim-theme'

        -- Editor Features
        use 'tpope/vim-surround'
        use 'tpope/vim-commentary'
        use 'tpope/vim-dispatch'
        use 'tpope/vim-fugitive'
        use 'preservim/nerdtree'
        use 'preservim/tagbar'
        use 'preservim/vimux'
        use 'nvim-treesitter/nvim-treesitter'
        use 'sbdchd/neoformat'
        use 'windwp/nvim-autopairs'
        use {
            'nvim-lualine/lualine.nvim',
        }

        -- FZF
        use 'junegunn/fzf'
        use 'junegunn/fzf.vim'

        -- LSP
        use 'neovim/nvim-lspconfig'
        use 'ray-x/lsp_signature.nvim'
        -- CMP
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'

        -- SNIP
        use 'hrsh7th/vim-vsnip'

        -- Additional Languages
        use 'Shirk/vim-gas' -- asm
        use 'rust-lang/rust.vim' -- rust

        -- End of packer
        if packer_bootstrap then
            require('packer').sync()
        end
    end
)
