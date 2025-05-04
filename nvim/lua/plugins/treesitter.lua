return {
        "nvim-treesitter/nvim-treesitter",
        event = "BufReadPre",
        build = ":TSUpdate",
        main  = "nvim-treesitter.configs",
        opts  = {
                ensure_installed      = "all",
                ignore_install        = { "comment" },
                highlight             = {
                        enable  = true,
                        disable = function(_, bufnr)
                                local maxFilesizeKb = 100
                                local ok, stats     = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(bufnr))
                                if ok and stats and stats.size > maxFilesizeKb * 1024 then return true end
                        end,
                },
                indent                = {
                        enable  = true,
                        disable = { "markdown" },
                },
                textobjects           = {
                        select = {
                                lookahead                      = true,
                                include_surrounding_whitespace = false,
                        },
                },
                incremental_selection = {
                        enable  = true,
                        keymaps = {
                                init_selection    = "<leader>v",
                                node_incremental  = "<CR>",
                                node_decremental  = "<Backspace>",
                                scope_incremental = false,
                        }
                }
        },
        {
                "ckolkey/ts-node-action",
                dependencies = { "nvim-treesitter" },
                -- config = function()
                --     require("ts-node-action").setup({})
                -- end
        },
        {
                "theRealCarneiro/hyprland-vim-syntax",
                dependencies = { "nvim-treesitter/nvim-treesitter" },
                ft           = "hypr",
        },
}
