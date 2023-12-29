-- Lazy setup

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    "nvim-telescope/telescope.nvim",
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-context",
    "nvim-lua/plenary.nvim",
    { "ThePrimeagen/harpoon", branch = "harpoon2" },
    "theprimeagen/refactoring.nvim",
    "mbbill/undotree",
    { 'nvim-lualine/lualine.nvim', dependencies = { "nvim-tree/nvim-web-devicons" }, },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

           -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        },
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { "akinsho/toggleterm.nvim", version = "*", config = true },
    { "nvimdev/dashboard-nvim", event = "VimEnter" },
    { "folke/which-key.nvim",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    { "nvimtools/none-ls.nvim" },
    { "folke/persistence.nvim", event = "BufReadPre" },
    { "NvChad/nvim-colorizer.lua" },
})
