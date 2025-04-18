------------------------------------------------------------------------------------------------------------------------
-- EDITOR

vim.api.nvim_set_hl(0, "MatchParen", { fg = "#f38ba8", bg = "#1e1e2e", bold = true })
vim.api.nvim_set_hl(0, "CursorLine", { fg = "none", bg = "none" })
vim.api.nvim_set_hl(0, "IncSearch", { fg = "#11111b", bg = "#f38ba8" })
vim.api.nvim_set_hl(0, "Visual", { fg = "none", bg = "none", bold = true })
-- vim.api.nvim_set_hl(0, "NonText", { fg = "#45475a", bg = "none", bold = true })

------------------------------------------------------------------------------------------------------------------------
-- UI

------------------------------------------------------------------------------------------------------------------------
-- LSP

vim.api.nvim_set_hl(0, "@variable", { fg = "#f38ba8", bg = "none" })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#f38ba8", bg = "none" })
vim.api.nvim_set_hl(0, "@variable.member", { fg = "#dce0e8", bg = "none" })

vim.api.nvim_set_hl(0, "@keyword", { fg = "#f9e2af", bg = "none" })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#dce0e8", bg = "none" })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = "#74c7ec", bg = "none" })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = "#74c7ec", bg = "none" })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#f38ba8", bg = "none" })

vim.api.nvim_set_hl(0, "@function.call", { fg = "#dce0e8", bg = "none" })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = "#dce0e8", bg = "none" })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = "#fab387", bg = "none" })

vim.api.nvim_set_hl(0, "@operator", { fg = "#74c7ec", bg = "none" })

vim.api.nvim_set_hl(0, "@conditional", { fg = "#74c7ec", bg = "none" })
vim.api.nvim_set_hl(0, "@method", { fg = "#dce0e8", bg = "none" })
vim.api.nvim_set_hl(0, "@module", { fg = "#f9e2af", bg = "none" })
vim.api.nvim_set_hl(0, "@namespace", { fg = "#b4befe", bg = "none" })

vim.api.nvim_set_hl(0, "@property", { fg = "#b4befe", bg = "none" })

vim.api.nvim_set_hl(0, "@lsp.type.function", { fg = "#dce0e8", bg = "none" })
vim.api.nvim_set_hl(0, "@lsp.type.interface", { fg = "#94e2d5", bg = "none" })
vim.api.nvim_set_hl(0, "@lsp.type.keyword", { fg = "#f5e0dc", bg = "none" })
vim.api.nvim_set_hl(0, "@lsp.type.type", { fg = "#6c7086", bg = "none" })
vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = "#dce0e8", bg = "none" })
