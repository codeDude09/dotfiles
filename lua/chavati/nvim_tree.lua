local vim = vim
local tree = require "nvim-tree"

vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_disable_window_picker = 1
vim.g.nvim_tree_icon_padding = ' '
vim.g.nvim_tree_symlink_arrow = ' ➛ '
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_create_in_closed_folder = 0
vim.g.nvim_tree_refresh_wait = 500
vim.g.nvim_tree_window_picker_exclude = {
  filetype = {
    'notify',
    'packer',
    'qf'
  },
  buftype = { 'terminal' }
}

vim.g.nvim_tree_special_files = { 'README.md', 'Makefile', 'MAKEFILE' }
vim.g.nvim_tree_show_icons = {
     git= 1,
     folders= 0,
     files= 0,
     folder_arrows= 0,
     }
vim.g.nvim_tree_icons = {
     default= '',
     symlink= '',
     git= {
       unstaged= "✗",
       staged= "✓",
       unmerged= "",
       renamed= "➜",
       untracked= "★",
       deleted= "",
       ignored= "◌"
       },
     folder= {
       arrow_open= "",
       arrow_closed= "",
       default= "",
       open= "",
       empty= "",
       empty_open= "",
       symlink= "",
       symlink_open= "",
       },
       lsp= {
         hint= "",
         info= "",
         warning= "",
         error= "",
       }
     }

tree.setup {
  nvim_tree_hide_dotfiles = false,
  nvim_tree_ignore = { '.git', 'node_modules', '.cache' },
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  update_to_buf_dir   = {enable= true, auto_open = true},
  hijack_cursor       = true,
  update_cwd          = true,
  diagnostics         = {enable = true},
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },

  view = {
    width = 30,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}


