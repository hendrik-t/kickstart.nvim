return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        columns = {
          'icon',
          -- "permissions",
          -- 'size',
          -- "mtime",
        },

        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = false,
        },

        view_options = {
          show_hidden = true,
        },
      }

      -- Open parent directory in current window
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

      -- Open parent directory in floating window
      vim.keymap.set('n', '<Leader>-', require('oil').toggle_float, { desc = 'Toggle floating parent directory' })
    end,
  },
}
