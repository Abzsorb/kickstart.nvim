return {
  'echasnovski/mini.files',
  version = '*',
  config = function()
    require('mini.files').setup {
      windows = {
        preview = true,
        width_preview = 50,
      },
    }

    vim.keymap.set('n', '-', '<CMD>lua MiniFiles.open(MiniFiles.get_latest_path())<CR>', { desc = 'Open parent directory' })
  end,
}
