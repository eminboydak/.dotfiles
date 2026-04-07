return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = 'mocha',
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },
      styles = {
        comments = { 'italic' },
        conditionals = { 'italic' },
      },
      default_integrations = true,
      integrations = {
        gitsigns = true,
        treesitter = true,
        mini = { enabled = true },
        neotree = true,
      },
    },
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
