return {
        "kosayoda/nvim-lightbulb",
        event = "LspAttach",
        opts  = {
                priority        = 100,
                link_highlights = true,
                code_lenses     = false,
                sign            = {
                        enabled = true,
                        text    = "󱠀",
                        hl      = "LightBulbSign",
                },
                virtual_text    = {
                        enabled = true,
                        text    = " 󱠀",
                        pos     = "eol",
                        hl_mode = "combine",
                        hl      = "LightBulbSign",
                },
                autocmd         = {
                        enabled    = true,
                        updatetime = 10,
                },
        },
}
