return {
  {
    'cbochs/grapple.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { scope = 'git' },
    cmd = { 'Grapple', 'GrappleToggle', 'GrappleToggleTags', 'GrappleReset' },
    keys = {
      { '<leader>m', '<cmd>Grapple toggle<cr>', desc = 'Grapple toggle [M]ark' },
      { '<leader>M', '<cmd>Grapple open_tags<cr>', desc = 'Grapple open tags' },
      { '<leader>um', '<cmd>Grapple reset<cr>', desc = 'Grapple reset marks' },
      { '<leader>1', '<cmd>Grapple select index=1<cr>', desc = 'Grapple select 1' },
      { '<leader>2', '<cmd>Grapple select index=2<cr>', desc = 'Grapple select 2' },
      { '<leader>3', '<cmd>Grapple select index=3<cr>', desc = 'Grapple select 3' },
      { '<leader>4', '<cmd>Grapple select index=4<cr>', desc = 'Grapple select 4' },
      { '<leader>5', '<cmd>Grapple select index=5<cr>', desc = 'Grapple select 5' },
      { '<leader>6', '<cmd>Grapple select index=6<cr>', desc = 'Grapple select 6' },
      { '<leader>7', '<cmd>Grapple select index=7<cr>', desc = 'Grapple select 7' },
      { '<leader>8', '<cmd>Grapple select index=8<cr>', desc = 'Grapple select 8' },
      { '<leader>9', '<cmd>Grapple select index=9<cr>', desc = 'Grapple select 9' },
    },
  },
}
