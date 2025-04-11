return {
        cmd          = { "lua-language-server", "--force-accept-workspace" },
        root_markers = { ".luarc.json", ".luarc.jsonc" },
        filetypes    = { "lua" },
        settings     = {
                Lua = {
                        diagnostics = { disable = { "trailing-space", "unused-function", "lowercase-global" } },
                        hint        = { enable = true, setType = true, arrayIndex = "Auto", semicolon = "Disable" },
                        format      = { enable = true },
                        semantic    = { enable = true },
                        completion  = {
                                callSnippet    = "Replace", -- functions -> no replace snippet
                                keywordSnippet = "Replace", -- keywords -> replace
                                showWord       = "Disable", -- already done by completion plugin
                                workspaceWord  = true,      -- already done by completion plugin
                                postfix        = ".",       -- useful for `table.insert` and the like
                        },
                        -- FIX https://github.com/sumneko/lua-language-server/issues/679#issuecomment-925524834
                        workspace   = {
                                checkThirdParty = false,
                                library         = {
                                        -- vim.env.VIMRUNTIME,
                                        -- vim.fn.stdpath("config"),
                                        -- "${3rd}/luv/library",
                                        -- "${3rd}/busted/library",
                                        -- "$HOME/.local/share/nvim/lazy/",
                                },
                        },
                },
        }
}
