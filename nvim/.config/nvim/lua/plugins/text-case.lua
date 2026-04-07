return {
  {
    'johmsalas/text-case.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {},
    keys = {
      { 'ga.', mode = { 'n', 'x' }, desc = 'Text Case' },
    },
    cmd = { 'TextCaseOpenQuickChange', 'TextCaseOpenTelescope' },
  },
}
