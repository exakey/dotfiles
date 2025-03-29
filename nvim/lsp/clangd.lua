vim.lsp.config["clangd"] = {
        cmd          = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
                "--function-arg-placeholders",
                "--fallback-style=llvm",
        },
        root_markers = {
                ".git",
                ".clangd",
                "Makefile",
                "configure.ac",
                "configure.in",
                "config.h.in",
                "meson.build",
                "meson_options.txt",
                "build.ninja",
        },
        settings     = {
                clangd = {
                        InlayHints    = {
                                Designators    = true,
                                Enabled        = true,
                                ParameterNames = true,
                                DeducedTypes   = true,
                        },
                        fallbackFlags = { "-std=c++20" },
                },
        },
        filetypes    = { "c", "cpp" },
}
