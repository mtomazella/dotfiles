vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Dev Icons
    use 'ryanoasis/vim-devicons' -- Developer Icons
    vim.opt.encoding = 'UTF-8'

    -- Tree sitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- Other Plugins
    use 'tpope/vim-surround'             -- Surrounding ysw)
    use 'preservim/nerdtree'             -- NerdTree
    use 'tpope/vim-commentary'           -- For Commenting gcc & gc
    use 'ap/vim-css-color'               -- CSS Color Preview
    use 'tc50cal/vim-terminal'           -- Vim Terminal
    use 'preservim/tagbar'               -- Tagbar for code navigation
    use 'terryma/vim-multiple-cursors'   -- CTRL + N for multiple cursors
    use 'christoomey/vim-tmux-navigator' -- Tmux-Vim Navigations
    use 'itchyny/lightline.vim'

    -- Themes
    use 'marko-cerovac/material.nvim'
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })
end)
