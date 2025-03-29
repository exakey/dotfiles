vim.lsp.config["ruff"] = {
        cmd          = {
                "ruff",
                "server",
                "format",
                "analyze",
                "linter",
        },
        root_markers = { ".git", ".venv" },
        filetypes    = { "py" },
}
