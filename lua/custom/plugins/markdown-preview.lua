return -- install with yarn or npm
{
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  build = 'cd app && npm install',
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
    vim.keymap.set('n', '<leader>mdp', '<cmd>MarkdownPreviewToggle<cr>')
  end,
  ft = { 'markdown' },
}
