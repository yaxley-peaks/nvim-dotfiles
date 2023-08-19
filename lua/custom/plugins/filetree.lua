return {
  "nvim-tree/nvim-tree.lua",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    sort_by = "case_sensitive",
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
      git_ignored = false,
    },
  },
  vim.keymap.set("n", "<leader>ff", '<cmd>NvimTreeToggle<cr>')
}
