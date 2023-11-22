local plugins = {
    {
        "williamboman/mason.nvim",
        opts = function()
            return require("custom.configs.mason")
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "ThePrimeagen/harpoon",
    },
    {
        "nvim-neorg/neorg",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                        },
                    },
                },
            }
        end,
    },
    {
        "tpope/vim-fugitive",
        lazy = false,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "stevearc/conform.nvim",
        lazy = false,
        config = function()
            require "custom.configs.conform"
        end,
    },
    {
        "lervag/vimtex",
        ft = "tex",
        config = function()
            require "custom.configs.vimtex"
        end
    },
    {
        "mfussenegger/nvim-dap",
    },
    {
        "leoluz/nvim-dap-go",
        ft = "go",
        dependencies = "mfussenegger/nvim-dap",
        config = function(_, opts)
            require("dap-go").setup(opts)
            require("core.utils").load_mappings("dap_go")
        end,
    },
    {
        "olexsmir/gopher.nvim",
        ft = "go",
        config = function(_, opts)
            require("gopher").setup(opts)
            require("core.utils").load_mappings("gopher")
        end,
        build = function()
            vim.cmd [[silent! GoInstallDeps]]
        end,
    },
}
return plugins
