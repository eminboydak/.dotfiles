return {
  {
    'folke/zen-mode.nvim',
    cmd = 'ZenMode',
    opts = {
      plugins = {
        gitsigns = { enabled = true },
        tmux = { enabled = false },
      },
    },
    keys = {
      { '<leader>z', '<cmd>ZenMode<cr>', desc = 'Toggle Zen Mode' },
    },
  },
  {
    'folke/twilight.nvim',
    opts = {},
  },
}
