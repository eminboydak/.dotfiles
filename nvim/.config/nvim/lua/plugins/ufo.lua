return {
  {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async' },
    opts = {
      provider_selector = function()
        return { 'treesitter', 'indent' }
      end,
    },
    keys = {
      { 'zR', function() require('ufo').openAllFolds() end, desc = 'Open all folds' },
      { 'zM', function() require('ufo').closeAllFolds() end, desc = 'Close all folds' },
      { 'zr', function() require('ufo').openFoldsExceptKinds() end, desc = 'Open folds except kinds' },
      { 'zm', function() require('ufo').closeFoldsWith() end, desc = 'Close folds with' },
      { 'zp', function() require('ufo').peekFoldedLinesUnderCursor() end, desc = 'Peek folded lines' },
    },
  },
}
