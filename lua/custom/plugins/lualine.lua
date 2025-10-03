return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- local custom_gruvbox = require 'lualine.themes.gruvbox_dark'
    -- custom_gruvbox.normal.c.bg = 'NONE'
    -- local lualine_modes = { 'insert', 'normal', 'visual', 'command', 'replace', 'inactive', 'terminal' }
    -- for _, field in ipairs(lualine_modes) do
    --   if custom_gruvbox[field] and custom_gruvbox[field].c then
    --     custom_gruvbox[field].c.bg = 'NONE'
    --   end
    -- end

    require('lualine').setup {
      options = {
        theme = 'gruvbox_dark',
      },
    }
  end,
}
