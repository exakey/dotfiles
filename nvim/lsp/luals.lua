return {
        cmd          = { "lua-language-server", "--force-accept-workspace" },
        root_markers = { ".luarc.json", ".luarc.jsonc" },
        filetypes    = { "lua" },
        settings     = {
                Lua = {
                        diagnostics = { disable = { "trailing-space", "unused-function" } },
                        hint        = { enable = true, setType = true, arrayIndex = "Disable", semicolon = "Disable" },
                        format      = { enable = true },
                        semantic    = { enable = true },
                        completion  = {
                                callSnippet    = "Replace", -- functions -> no replace snippet
                                keywordSnippet = "Replace", -- keywords -> replace
                                showWord       = "Disable", -- already done by completion plugin
                                workspaceWord  = false,     -- already done by completion plugin
                                postfix        = ".",       -- useful for `table.insert` and the like
                        },
                        -- FIX https://github.com/sumneko/lua-language-server/issues/679#issuecomment-925524834
                        workspace   = {
                                checkThirdParty                      = "Disable",
                                [vim.fn.expand("$VIMRUNTIME/lua")]   = true,
                                [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                },
        }
}
