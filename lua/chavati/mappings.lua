local vim = vim
local utils = require 'chavati.utils'


local setup_mappings = function()
  -- LSP
  utils.key_mapper("n","gh",":lua require'lspsaga.provider'.lsp_finder()<CR>")

  utils.key_mapper("n","<leader>ca",":lua require('lspsaga.codeaction').code_action()<CR>")
  utils.key_mapper("v","<leader>ca",":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>")

  utils.key_mapper("n","K",":lua require('lspsaga.hover').render_hover_doc()<CR>")
  utils.key_mapper("n","<C-q>",":lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
  utils.key_mapper("n","<C-a>",":lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")

  utils.key_mapper("n","gs",":lua require('lspsaga.signaturehelp').signature_help()<CR>")

  utils.key_mapper("n","<space>rn",":lua require('lspsaga.rename').rename()<CR>")

  utils.key_mapper("n","vd",":lua require'lspsaga.provider'.preview_definition()<CR>")
  utils.key_mapper("n","gd",":lua vim.lsp.buf.definition()<CR>")
  utils.key_mapper("n","gr",":lua vim.lsp.buf.references()<CR>")

  utils.key_mapper("n","<leader>cd",":lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>")
  utils.key_mapper("n","<leader>cc",":lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>")
  utils.key_mapper("n","[e",":lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>")
  utils.key_mapper("n","]e",":lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>")

  utils.key_mapper("n","<A-d>",":lua require('lspsaga.floaterm').open_float_terminal()<CR>")
  utils.key_mapper("t","<A-d> ",":<C-\\><C-n>lua require('lspsaga.floaterm').close_float_terminal()<CR>")


  utils.key_mapper("n","<C-f>",":lua vim.lsp.buf.formatting()<CR>")
  -- Telescope
  vim.cmd[[nnoremap <c-s> :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>]]
  vim.cmd[[nnoremap <s-s> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>]]
  vim.cmd[[nnoremap <c-p> :lua require('telescope.builtin').git_files()<CR>]]
  vim.cmd[[nnoremap <s-p> :lua require('telescope.builtin').find_files()<CR>]]
  vim.cmd[[nnoremap <leader>gl :lua require('telescope.builtin').git_commits()<CR>]]
  vim.cmd[[nnoremap <leader>gb :lua require('telescope.builtin').git_branches()<CR>]]
  -- Tree
  vim.cmd[[nnoremap <c-n> :NvimTreeToggle<CR>]]
  vim.cmd[[nnoremap <leader>r :NvimTreeRefresh<CR>]]
  vim.cmd[[nnoremap <leader>n :NvimTreeFindFile<CR>]]
  -- Git
  vim.cmd[[nnoremap <leader>gs :lua require('neogit').open({kind = 'split'})<CR>]]
  vim.cmd[[nnoremap <leader>gj :diffget //3<CR>]]
  vim.cmd[[nnoremap <leader>gf :diffget //2<CR>]]

end

setup_mappings();
