return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      mode = 'tabs',
      buffer_close_icon = 'x',
      themable = false,
      indicator = {
        style = "underline"
      },
      offsets = {
        { filetype = 'NvimTree' }
      },
      highlights = {
        buffer_selected = {
          italic = false,
        },
        indicator_selected = {
          fg = { attribute = 'fg', highlight = 'Function' },
          italic = false
        },
        separator_style = "slant",
        always_show_bufferline = false,

      }
    }
  }
}
