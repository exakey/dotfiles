return {
        "mfussenegger/nvim-lint",
        event  = { "BufReadPre", "BufNewFile" },
        config = function()
                local lint = require("lint")

                lint.linters_by_ft = {
                        -- sh = { "shellcheck" },
                        -- lua = { "luacheck" },
                        -- c   = { "cpplint" },
                        -- cpp = { "cpplint" },
                        -- python = { "ruff" }
                }

                local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

                vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
                        group    = lint_augroup,
                        callback = function()
                                lint.try_lint()
                        end
                })

                vim.keymap.set("n", "<leader>l", function()
                        lint.try_lint()
                end)
        end
}
