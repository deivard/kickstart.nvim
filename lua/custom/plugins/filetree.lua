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
      filesystem = {
        bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
        cwd_target = {
          sidebar = 'tab', -- sidebar is when position = left or right
          current = 'window', -- current is when position = current
        },
        hijack_netrw_behavior = 'disabled',
      },
      window = {
        mappings = {
          ['<space>'] = {
            'toggle_node',
            nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
          },
          ['l'] = 'toggle_node',
          ['h'] = 'close_node',
          -- [','] = vim.cmd 'Neotree dir=' .. vim.api.nvim_buf_get_name(1),
        },
      },
    }
    vim.keymap.set({ 'i', 'n', 'v' }, '<C-b>', '<cmd>Neotree toggle focus filesystem left<cr>', { remap = false })
    -- vim.keymap.set({ 'i', 'n', 'v' }, '<C-e>', '<cmd>Neotree toggle focus filesystem left<cr>', { remap = false })
    vim.keymap.set({ 'n', 'v' }, '<leader>nf', '<cmd>Neotree toggle focus filesystem left<cr>', { remap = false })
    vim.keymap.set({ 'i', 'n', 'v' }, '<C-g>', '<cmd>Neotree float git_status<cr>', { remap = false })
    vim.keymap.set({ 'n', 'v' }, '<leader>ng', '<cmd>Neotree float git_status<cr>', { remap = false })
  end,
}
