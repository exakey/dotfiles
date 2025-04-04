return {
        "rachartier/tiny-inline-diagnostic.nvim",
        lazy     = false,
        priority = 1000,
        opts     = {
                signs   = {
                        left         = "",
                        right        = "",
                        diag         = "■",
                        arrow        = "",
                        up_arrow     = " ",
                        vertical     = " │",
                        vertical_end = " └",
                },
                blend   = { factor = 0 },
                hi      = { error = "DiagnosticError", warn = "DiagnosticWarn", info = "DiagnosticInfo", hint = "DiagnosticHint", arrow = "NonText" },
                options = {
                        show_source                  = false,
                        throttle                     = 20,
                        softwrap                     = 30,
                        multiple_diag_under_cursor   = true,
                        multilines                   = true,
                        show_all_diags_on_cursorline = true,
                        enable_on_insert             = false,
                        enable_on_select             = true,
                        overwrite_events             = nil,
                        overflow                     = { mode = "wrap" },
                        break_line                   = { enabled = false, after = 30 },
                        virt_texts                   = { priority = 99 },
                        format                       = function(diagnostic)
                                return diagnostic.message .. " [" .. diagnostic.source .. "]"
                        end,
                },
        },
}
