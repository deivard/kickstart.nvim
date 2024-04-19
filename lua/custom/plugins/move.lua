return {
  'fedepujol/move.nvim',
  opts = {
    --- Config
  },
  config = function()
    require('move').setup {}
    local opts = { noremap = true, silent = true }
    -- Normal-mode commands
    vim.keymap.set('n', '<CA-j>', ':MoveLine(1)<CR>', opts)
    vim.keymap.set('n', '<CA-k>', ':MoveLine(-1)<CR>', opts)
    vim.keymap.set('n', '<CA-h>', ':MoveHChar(-1)<CR>', opts)
    vim.keymap.set('n', '<CA-l>', ':MoveHChar(1)<CR>', opts)
    vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
    vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

    -- Visual-mode commands
    vim.keymap.set('v', '<CA-j>', ':MoveBlock(1)<CR>', opts)
    vim.keymap.set('v', '<CA-k>', ':MoveBlock(-1)<CR>', opts)
    vim.keymap.set('v', '<CA-h>', ':MoveHBlock(-1)<CR>', opts)
    vim.keymap.set('v', '<CA-l>', ':MoveHBlock(1)<CR>', opts)
  end,
}
