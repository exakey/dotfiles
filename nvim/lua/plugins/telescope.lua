return {
        "nvim-telescope/telescope.nvim",
        config = function()
                require("functions.backdrop-telescope")
                local telescope = require("telescope")
                local actions   = require("telescope.actions")

                telescope.load_extension("fzf")

                telescope.setup({
                        defaults = {
                                borderchars           = { " ", " ", " ", " ", " ", " ", " ", " " },
                                sorting_strategy      = "ascending",
                                scroll_strategy       = "cycle",
                                selection_caret       = "󰨓 ",
                                dynamic_preview_title = true,
                                path_display          = { "truncate" },
                                default_mappings      = false,
                                winblend              = 0,
                                layout_strategy       = "vertical",
                                preview               = {},

                                layout_config         = {
                                        vertical   = {
                                                prompt_position = "top",
                                                preview_height  = 0.6,
                                                height          = 0.9,
                                                width           = 0.9,
                                        },
                                        horizontal = {
                                                prompt_position = "top",
                                                preview_width   = 0.70,
                                                height          = 0.90,
                                                width           = 0.80,
                                        },
                                },

                                mappings              = {
                                        i = {
                                                ["<C-u>"] = false,
                                                ["<C-h>"] = actions.preview_scrolling_up,
                                                ["<C-l>"] = actions.preview_scrolling_down,
                                                ["<C-k>"] = actions.move_selection_previous,
                                                ["<C-j>"] = actions.move_selection_next,
                                                ["gg"]    = actions.move_to_top,
                                                ["G"]     = actions.move_to_bottom,
                                        },
                                },
                        },
                })

                vim.api.nvim_set_hl(0, "TelescopePromptCount", { link = "Normal" })
                vim.api.nvim_set_hl(0, "TelescopePromptTitle", { link = "DiagnosticError" })
                vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { link = "DiagnosticError" })
                vim.api.nvim_set_hl(0, "TelescopePromptNormal", { link = "Normal" })
                vim.api.nvim_set_hl(0, "TelescopePromptBorder", { link = "FloatBorder" })
                vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { link = "DiagnosticError" })
                vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { link = "NonText" })
                vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { link = "FloatBorder" })
                vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { link = "DiagnosticError" })
                vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { link = "Normal" })
                vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { link = "FloatBorder" })
                vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "Visual" })
                vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { link = "Visual" })

        end,
}
