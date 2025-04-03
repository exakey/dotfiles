return {
        cmd       = { "bash-language-server", "start" },
        filetypes = { "bash", "sh", "zsh" },
        settings  = {
                bashIde = {
                        includeAllWorkspaceSymbols = true,
                        globPattern                = "**/*@(.sh|.bash)",
                        shellcheckArguments        = "--shell=bash",
                },
        },
}
