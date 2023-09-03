return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      mode = 'tabs',
      buffer_close_icon = '󰅖',
      themable = true,
      indicator = {
        style = "icon"
      },
      offsets = {
        {
          filetype = 'NvimTree',
          text = "File Explorer",
          text_align = "center",
        }
      },
      highlights = {
        buffer_selected = {
          italic = false,
        },
        indicator_selected = {
          fg = { attribute = 'fg', highlight = 'Function' },
          italic = false
        },
        separator_style = "padded_slant",
        always_show_bufferline = false,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { 'close' }
        },
      }
    }
  }
}
