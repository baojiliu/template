return {
  {
    "mustache/vim-mustache-handlebars",
    config = function()
    end,
  },
  {
    "lambdalisue/suda.vim",
    config = function()
    end,
  },
  {
    "easymotion/vim-easymotion",
    config = function()
      vim.keymap.set('i', '<C-y>', '<Plug>(easymotion-prefix)', { remap = true} )
    end,
  },
  {
    "rust-lang/rust.vim",
    config = function()
      vim.g.go_gopls_enabled=0
    end,
  },
  {
    "fatih/vim-go",
    config = function()
       vim.g.go_gopls_enabled=0
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function()
    end,
  },
  {
    "vim-autoformat/vim-autoformat",
    config = function()  end,
  },
  {
    "github/copilot.vim",
    config = function()
      vim.keymap.set('i', '<C-L>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      })
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_filetypes = {
        [ '*' ] = true,
      }
    end,
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  }
}
