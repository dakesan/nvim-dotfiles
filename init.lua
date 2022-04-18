vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd bufwritepost plugins.lua source <afile> | packercompile
  augroup end
]])

-- packerのプラグイン読み込み
require('plugins')
-- require'hop'.setup()
-- color scheme
require('config.colorscheme')

-- vim settings
require('config.vimsettings')

-- クリップボード共有 
local api = vim.api
-- local vim = vim
-- api.nvim_set_option('clipboard', 'unnamedplus')
-- vim.o.clipboard = "unnamedplus"

-- ctrl+s save on insertmode
api.nvim_set_keymap("i", "<c-s>", "<esc>:w<cr>i", { noremap = true })
api.nvim_set_keymap("n", "<c-s>", ":w<cr>", { noremap = true })

-- keys
vim.g.mapleader = " "

-- quick-scopeをvscodeに反映させる
vim.cmd[[highlight quickscopeprimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline]]
vim.cmd[[highlight quickscopesecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline]]
vim.cmd[[ let g:qs_highlight_on_keys = ['f', 'f', 't', 't'] ]]

