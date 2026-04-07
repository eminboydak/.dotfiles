return {
  {
    'gbprod/yanky.nvim',
    dependencies = { 'kkharji/sqlite.lua' },
    opts = {
      highlight = { timer = 150 },
      ring = { storage = 'sqlite' },
    },
    keys = {
      { '<leader>p', function() require('telescope').extensions.yank_history.yank_history() end, desc = '[P]aste History' },
      { 'y', '<Plug>(YankyYank)', mode = { 'n', 'x' }, desc = 'Yank' },
      { 'p', '<Plug>(YankyPutAfter)', mode = { 'n', 'x' }, desc = 'Put after' },
      { 'P', '<Plug>(YankyPutBefore)', mode = { 'n', 'x' }, desc = 'Put before' },
      { 'gp', '<Plug>(YankyGPutAfter)', mode = { 'n', 'x' }, desc = 'GPut after' },
      { 'gP', '<Plug>(YankyGPutBefore)', mode = { 'n', 'x' }, desc = 'GPut before' },
      { '[y', '<Plug>(YankyCycleForward)', desc = 'Cycle forward yank history' },
      { ']y', '<Plug>(YankyCycleBackward)', desc = 'Cycle backward yank history' },
    },
  },
}
