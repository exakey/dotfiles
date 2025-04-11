return {
        "echasnovski/mini.files",
        version = false,
        event   = "VeryLazy",
        keys    = { { "<leader><leader>e", function() MiniFiles.open() end, desc = "mini-files" } },
        confif  = function()
                require("mini.files").setup()
        end
}
