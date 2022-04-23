local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
cmd 'colorscheme doom-one'

-- vim.api.nvim_command('set termguicolors')
