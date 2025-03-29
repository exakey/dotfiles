vim.lsp.config["pylyzer"] = {
        cmd          = { "pylyzer", "start" },
        root_markers = { ".git" },
        filetypes    = { "py" },
}
