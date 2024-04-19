-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        mappings = {
          ['l'] = 'toggle_node',
          ['h'] = 'close_node',
        },
      },
    }
    vim.keymap.set({ 'i', 'n', 'v' }, '<C-b>', '<cmd>Neotree toggle focus filesystem left<cr>', { remap = false })
    vim.keymap.set({ 'n', 'v' }, '<leader>nf', '<cmd>Neotree toggle focus filesystem left<cr>', { remap = false })
    vim.keymap.set({ 'i', 'n', 'v' }, '<C-g>', '<cmd>Neotree float git_status<cr>', { remap = false })
    vim.keymap.set({ 'n', 'v' }, '<leader>ng', '<cmd>Neotree float git_status<cr>', { remap = false })
  end,
}
