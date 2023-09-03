vim.go.conceallevel = 3
vim.o.conceallevel = 3
local O = {
   require("gitsigns").setup({
      signs = {
         add          = { text = '│' },
         change       = { text = '│' },
         delete       = { text = '_' },
         topdelete    = { text = '‾' },
         changedelete = { text = '~' },
         untracked    = { text = '┆' },
      },
   }),
   require("fidget").setup({
      tag = "legacy",
      text = {
         spinner = "meter"
      }
   })
}
return O
