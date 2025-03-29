vim.lsp.config["bash-language-server"] = {
        cmd          = { "bash-language-server", "start" },
        root_markers = { ".git", ".editorconfig" },
        settings     = {
                bashIde = {
                        includeAllWorkspaceSymbols = true,
                        globPattern                = "**/*@(.sh|.bash)",
                        shellcheckArguments        = "--shell=bash",
                },
        },
        filetypes    = { "bash", "sh", "zsh" },
}
