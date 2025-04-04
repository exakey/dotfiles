vim.filetype.add({
        pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

return {

        {
                "nvim-treesitter/nvim-treesitter",
                event = "BufReadPre",
                build = ":TSUpdate",
                main  = "nvim-treesitter.configs",
                init  = function()
                        -- use bash parser for zsh files
                        vim.treesitter.language.register("bash", "zsh")

                        -- FIX for `comments` parser https://github.com/stsewd/tree-sitter-comment/issues/22
                        vim.api.nvim_create_autocmd("ColorScheme", {
                                desc     = "User: FIX hlgroup for `comments` parser",
                                callback = function() vim.api.nvim_set_hl(0, "@lsp.type.comment.lua", {}) end,
                        })
                end,
                opts  = {
                        -- easier than keeping track of new "special parsers", which are not
                        -- auto-installed on entering a buffer (e.g., regex, luadocs, comments)
                        ensure_installed      = "all",
                        ignore_install        = { "comment" },

                        highlight             = {
                                enable  = true,
                                disable = function(_, bufnr)
                                        -- disable on large files
                                        local maxFilesizeKb = 100
                                        local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(bufnr))
                                        if ok and stats and stats.size > maxFilesizeKb * 1024 then return true end
                                end,
                        },

                        indent                = {
                                enable  = true,
                                disable = { "markdown" }, -- indentation at bullet points is worse
                        },

                        textobjects           = {
                                select = {
                                        lookahead                      = true,
                                        include_surrounding_whitespace = false, -- doesn't work with my comment textobj mappings
                                },
                        },

                        incremental_selection = {
                                enable  = true,
                                keymaps = {
                                        init_selection    = "<leader>v",
                                        node_incremental  = "<CR>",
                                        node_decremental  = "<S-CR>",
                                        -- scope_incremental = "<TAB>",
                                }
                        }
                },
        },

        {
                'ckolkey/ts-node-action',
                dependencies = { 'nvim-treesitter' },
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
