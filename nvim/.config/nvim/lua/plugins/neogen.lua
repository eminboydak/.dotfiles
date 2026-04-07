return {
  {
    'danymat/neogen',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = { snippet_engine = 'luasnip' },
    keys = {
      { '<leader>cn', function() require('neogen').generate() end, desc = '[C]ode [N]eogen Doc Comment' },
    },
  },
}
