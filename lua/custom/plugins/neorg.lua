return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    vim.go.conceallevel = 3
    require("neorg").setup {
      load = {
        ["core.summary"] = {},  -- autogen summary
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {
          config = {
            icon_preset = "basic"
          }
        },                  -- Adds pretty icons to your documents
        ["core.ui"] = {},   -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
            default_workspace = "notes"
          },
        },
      },
    }
  end,
}
