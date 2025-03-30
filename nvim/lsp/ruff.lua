return {
        cmd          = {
                "ruff",
                "server",
                "format",
                "analyze",
                "linter",
        },
        root_markers = { ".venv" },
        filetypes    = { "python" },
}
