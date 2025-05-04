return {
        "aidancz/eolmark.nvim",
        event  = "VeryLazy",
        config = function()
                require("eolmark").setup({
                        opts              = { virt_text = { { "󱞣", "NonText" } } },
                        excluded_buftypes = { ".+" },
                })
        end,
}
