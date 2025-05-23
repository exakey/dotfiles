return {
        cmd          = { "ruff", "server" },
        filetypes    = { "python" },
        root_markers = { ".git", "pyproject.toml" },
        init_options = {
                settings = {
                        organizeImports = false,
                        -- lint            = {
                        --         extendSelect = {
                        --                 "A",
                        --                 "ANN",
                        --                 "ARG",
                        --                 "B",
                        --                 "COM",
                        --                 "C4",
                        --                 "D",
                        --                 "DOC",
                        --                 "FBT",
                        --                 "I",
                        --                 "ICN",
                        --                 "N",
                        --                 "PERF",
                        --                 "PL",
                        --                 "Q",
                        --                 "RET",
                        --                 "RUF",
                        --                 "SIM",
                        --                 "SLF",
                        --                 "TID",
                        --                 "W",
                        --         },
                        -- },
                },
        },
        settings     = {},
}
