-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    --####################################################
    -- Other
    --####################################################

    --use('theprimeagen/harpoon')
    use { 'tpope/vim-fugitive' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    --use { 'glepnir/dashboard-nvim', event = 'VimEnter', requires = {'nvim-tree/nvim-web-devicons'} }
    --use { 'folke/tokyonight.nvim' }
    --use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    --use { 'nyoom-engineering/oxocarbon.nvim' }
    --use {'vimwiki/vimwiki'}
    use {'christoomey/vim-tmux-navigator'}
    use { "catppuccin/nvim", as = "catppuccin" }





    --####################################################
    -- Markdown Preview
    --####################################################

    use({
        "iamcco/markdown-preview.nvim",
        run = function () vim.fn["mkdp#util#install"]() end,
    })



    --####################################################
    -- Gitsigns
    --####################################################

    use {
        'lewis6991/gitsigns.nvim',

        config = function()
            require('gitsigns').setup()
        end
    }


    --####################################################
    -- Treesitter
    --####################################################

    use {
        'nvim-treesitter/nvim-treesitter',

        config = function()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = { 'norg' },

                highlight = {
                    enable = true,
                }
            }
        end
    }



    --####################################################
    -- Trouble.nvim
    --####################################################

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }


    --####################################################
    -- Nvim Autopairs
    --####################################################

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }



    --####################################################
    -- Telescope
    --####################################################

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    --####################################################
    -- LuaLine
    --####################################################

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup()
        end
    }



    --####################################################
    -- LSP Zero
    --####################################################

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

end)
