return {
        cmd       = { "bash-language-server", "start" },
        settings  = {
                bashIde = {
                        includeAllWorkspaceSymbols = true,
                        globPattern                = "**/*@(.sh|.bash)",
                        shellcheckArguments        = "--shell=bash",
                },
        },
        filetypes = { "bash", "sh", "zsh" },
}
