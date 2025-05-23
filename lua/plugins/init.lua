return{
    -- === ui ===
    -- status line
    "nvim-lualine/lualine.nvim",
    -- dashboard
    "goolord/alpha-nvim",
    -- themes
    {
        "catppuccin/nvim",
        "folke/tokyonight.nvim",
        "ellisonleao/gruvbox.nvim",
        "rose-pine/neovim",
        "EdenEast/nightfox.nvim",
        "rebelot/kanagawa.nvim",
        "nyoom-engineering/oxocarbon.nvim",
    },
    -- ==================================================
    -- === LSP ===
    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            -- LSP Support
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            -- Autocompletion
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "saadparwaiz1/cmp_luasnip",
            {
            "folke/lazydev.nvim",
                ft = 'lua',
                opt = {
                    library = {
                        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
                    },
                },
            },
            -- Snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
            -- indent automation; no config needed
            "NMAC427/guess-indent.nvim",
        }},
    -- ==================================================
    -- === nvim plugins ===
    -- filetree
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/playground",
    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        event = 'VimEnter',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
            { 'nvim-telescope/telescope-ui-select.nvim' },

            -- Useful for getting pretty icons, but requires a Nerd Font.
            { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font }
        }
    },
    -- harpoon
    "ThePrimeagen/harpoon",
    -- undotree
    "mbbill/undotree",
    -- fugitive (git integration)
    "tpope/vim-fugitive",
    -- tmux integration
    "christoomey/vim-tmux-navigator",
    -- which-key; to show pending keybinds
    "folke/which-key.nvim",
    {
        "folke/todo-comments.nvim", 
        event = "VimEnter",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        opts = { signs = false }
    }
}
