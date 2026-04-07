return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            '         _             _        ',
            '        | \\  _   _  _ | _)  _. _|_ ',
            '        |_/ (_) (_ (_ |  | (_|  |_ ',
            '',
            '        Neovim '
              .. vim.version().major
              .. '.'
              .. vim.version().minor
              .. '.'
              .. vim.version().patch,
          }, '\n'),
          keys = {
            { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
            { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = ' ', key = 'n', desc = 'Neovim Config', action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })" },
            { icon = ' ', key = 'l', desc = 'Lazy', action = ':Lazy' },
            { icon = ' ', key = 'm', desc = 'Mason', action = ':Mason' },
            { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
          },
        },
      },
      notify = { enabled = false },
      bigfile = { enabled = true },
      quickfile = { enabled = true },
    },
    keys = {
      { '<leader>un', function() Snacks.notifier.show_history() end, desc = 'Notification History' },
    },
  },
}
