-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'christoomey/vim-tmux-navigator',
    init = function()
      vim.g.tmux_navigator_no_mappings = 1
    end,
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<M-h>', '<cmd>TmuxNavigateLeft<cr>' },
      { '<M-j>', '<cmd>TmuxNavigateDown<cr>' },
      { '<M-k>', '<cmd>TmuxNavigateUp<cr>' },
      { '<M-l>', '<cmd>TmuxNavigateRight<cr>' },
      { '<M-\\>', '<cmd>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'tris203/precognition.nvim',
    --event = "VeryLazy",
    vim.keymap.set('n', '<C-Space>', '<cmd>Precognition toggle<cr>'),
    config = {
      startVisible = false,

      -- showBlankVirtLine = true,
      -- highlightColor = { link = "Comment" },
      -- hints = {
      --      Caret = { text = "^", prio = 2 },
      --      Dollar = { text = "$", prio = 1 },
      --      MatchingPair = { text = "%", prio = 5 },
      --      Zero = { text = "0", prio = 1 },
      --      w = { text = "w", prio = 10 },
      --      b = { text = "b", prio = 9 },
      --      e = { text = "e", prio = 8 },
      --      W = { text = "W", prio = 7 },
      --      B = { text = "B", prio = 6 },
      --      E = { text = "E", prio = 5 },
      -- },
      -- gutterHints = {
      --     G = { text = "G", prio = 10 },
      --     gg = { text = "gg", prio = 9 },
      --     PrevParagraph = { text = "{", prio = 8 },
      --     NextParagraph = { text = "}", prio = 8 },
      -- },
    },
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },

  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').create_default_mappings()
    end,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
}
