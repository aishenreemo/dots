require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    use("gpanders/editorconfig.nvim")
    use("godlygeek/tabular")
    use("challenger-deep-theme/vim")

    use({
        "lewis6991/impatient.nvim",
        config = {
            -- Move to lua dir so impatient.nvim can cache it
            compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua"
        }
    })

    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
            })
        end
    })

    use({
        "andweeb/presence.nvim",
        config = function()
            require("presence"):setup()
        end
    })

    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "neovim/nvim-lspconfig",
            "ray-x/lsp_signature.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "onsails/lspkind-nvim"
        },
        config = function ()
            require "plugins.configs.completion"
        end
    })

    use({
        "L3MON4D3/LuaSnip",
        requires = "rafamadriz/friendly-snippets",
    })

    use({
        "williamboman/nvim-lsp-installer",
        after = "nvim-cmp",
        config = function ()
            require "plugins.configs.lsp_installer"
        end
    })

    use({
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                disable_netrw = true,
                actions = {
                    open_file = {
                        resize_window = true
                    }
                },
            })
        end
    })
    -- using packer.nvim
    use({
        "akinsho/bufferline.nvim",
        tag = "v2.*",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("bufferline").setup({
                options = {
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "",
                            padding = 0.5,
                            highlight = "BufferlineDirectory"
                        }
                    },
                    indicator_icon = "▎",
                    modified_icon = "",

                    close_icon = "",
                    show_close_icon = true,

                    max_name_length = 20,
                    max_prefix_length = 13,
                    tab_size = 20,
                }
            })
        end
    })
end)
