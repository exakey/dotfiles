return {
        "yaocccc/nvim-foldsign",
        event  = "VeryLazy",
        config = function()
                require("nvim-foldsign").setup({
                        offset    = 0,
                        foldsigns = {
                                open  = "-",
                                close = "+",
                                seps  = { "▏", "▏" },
                        },
                        enabled   = true,
                })
        end,
}
