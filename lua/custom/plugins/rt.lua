return {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    opts = {
        server = {
            on_attach = function(_, bufnr)
                local rt = require "rust-tools"
                -- Hover actions
                vim.keymap.set("n", "<leader>th", function ()
                    rt.hover_actions.hover_actions()
                    rt.hover_actions.hover_actions()
                end,
                    { buffer = bufnr, desc = "Hover actions" })
                -- Code action groups
                vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr, desc = "Code actions" })
                vim.keymap.set("n", "<leader>tr", require('rust-tools').runnables.runnables, {buffer = bufnr, desc = "Runnables"})
                vim.keymap.set("n", "<leader>tie", require('rust-tools').inlay_hints.enable, {buffer = bufnr, desc = "Enable inline hintss"})
                vim.keymap.set("n", "<leader>tid", require('rust-tools').inlay_hints.disable, {buffer = bufnr, desc = "Disable inline hintss"})
            end,
        },
    }
}
