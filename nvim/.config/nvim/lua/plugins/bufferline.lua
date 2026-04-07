return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = true,
          },
        },
        hover = {
          enabled = true,
          delay = 200,
          reveal = { 'close' },
        },
      },
    },
  },
}
