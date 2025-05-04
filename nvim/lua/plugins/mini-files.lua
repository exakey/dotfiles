return {
        "echasnovski/mini.files",
        version = false,
        event   = "VeryLazy",
        keys    = { { ",m", function() require("mini.files").open() end, desc = "mini-files" } },
        config = function ()
                vim.api.nvim_set_hl(0, "MiniFilesDirectory", { link = "Function" })
                vim.api.nvim_set_hl(0, "MiniFilesFile", { link = "NonText" })
                vim.api.nvim_set_hl(0, "MiniFilesCursorLine", { link = "Visual" })
        end,
}
