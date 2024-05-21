return {
  'michaelb/sniprun',
  branch = 'master',

  build = 'sh install.sh',
  config = function()
    require('sniprun').setup {}
    vim.api.nvim_set_keymap('v', 'f', '<Plug>SnipRun', { silent = true })
    vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>SnipRunOperator', { silent = true })
    vim.api.nvim_set_keymap('n', '<leader>ff', '<Plug>SnipRun', { silent = true })
  end,
}
