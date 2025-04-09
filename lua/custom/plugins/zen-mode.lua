return {
  'folke/zen-mode.nvim',
  lazy = false,
  opts = {

    -- vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      '<C-w>o',
      function()
        require('zen-mode').toggle { window = { width = 1.0 } }
      end,
      desc = 'Toggle ZenMode (focus one window pane)',
    },
    {
      '<C-w><C-o>',
      function()
        require('zen-mode').toggle { window = { width = 1.0 } }
      end,
      desc = 'Toggle ZenMode (focus one window pane)',
    },
    -- { '<C-w><C-o>', ':ZenMode<enter>', desc = 'Toggle ZenMode (focus one window pane)' },
  },
}
