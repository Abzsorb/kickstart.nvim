return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()
      require('mini.bracketed').setup()
      require('mini.align').setup()
      require('mini.jump').setup()
      require('mini.comment').setup()
      require('mini.cursorword').setup()
      require('mini.pairs').setup()
      require('mini.files').setup {
        window = {
          preview = true,
          preview_width = 50,
        },
      }
      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- Keybindings:
      vim.keymap.set('n', '-', '<CMD>lua MiniFiles.open(MiniFiles.get_latest_path())<CR>', { desc = 'Open parent directory' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
