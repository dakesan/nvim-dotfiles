local utils = require('utils')

vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>noh<CR>', {noremap = true}) -- Clear highlights
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {noremap = true})           -- jk to escape
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>i", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<Plug>(edgemotion-j)", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-k>", "<Plug>(edgemotion-k)", {noremap = true})

-- VSCode which key
-- vim.cmd [[nnoremap <space> <Cmd>call VSCodeNotify('whichkey.show')<CR>]]

-- substitute
vim.api.nvim_set_keymap("n", "<leader><leader>p", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><leader>P", "<cmd>lua require('substitute').line()<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><leader>p", "<cmd>lua require('substitute').eol()<cr>", { noremap = true })
vim.api.nvim_set_keymap("x", "<leader><leader>p", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })

-- visual移動
vim.api.nvim_set_keymap("n", "j", 'gj', {noremap=false})
vim.api.nvim_set_keymap("n", "k", 'gk', {noremap=false})
vim.api.nvim_set_keymap("n", "<Down>", 'gj', {noremap=false})
vim.api.nvim_set_keymap("n", "<Up>", 'gk', {noremap=false})


-- レジスタを汚さないxやs
vim.api.nvim_set_keymap("n", "s", '"_s', {noremap=true})
vim.api.nvim_set_keymap("n", "s", '"_s', {noremap=true})
vim.api.nvim_set_keymap("n", "S", '"_S', {noremap=true})
vim.api.nvim_set_keymap("v", "S", '"_S', {noremap=true})
vim.api.nvim_set_keymap("n", "x", '"_x', {noremap=true})
vim.api.nvim_set_keymap("n", "x", '"_x', {noremap=true})
vim.api.nvim_set_keymap("n", "X", '"_X', {noremap=true})
vim.api.nvim_set_keymap("v", "X", '"_X', {noremap=true})
vim.api.nvim_set_keymap("n", "c", '"_c', {noremap=true})
vim.api.nvim_set_keymap("n", "c", '"_c', {noremap=true})
vim.api.nvim_set_keymap("n", "C", '"_C', {noremap=true})
vim.api.nvim_set_keymap("v", "C", '"_C', {noremap=true})

vim.api.nvim_set_keymap("v", "C", '"_C', {noremap=true})
vim.api.nvim_set_keymap("v", "C", '"_C', {noremap=true})
vim.api.nvim_set_keymap("v", "C", '"_C', {noremap=true})
vim.api.nvim_set_keymap("v", "C", '"_C', {noremap=true})

local opts = {noremap = false, silent = true}
vim.api.nvim_set_keymap("n", "<leader><leader>f", "<Plug>(easymotion-prefix)", opts)
vim.api.nvim_set_keymap("n", "<Leader><leader>l", "<Plug>(easymotion-lineforward)", opts)
vim.api.nvim_set_keymap("n", "<Leader><leader>j", "<Plug>(easymotion-j)", opts)
vim.api.nvim_set_keymap("n", "<Leader><leader>k", "<Plug>(easymotion-k)", opts)
vim.api.nvim_set_keymap("n", "<Leader><leader>h", "<Plug>(easymotion-linebackward)", opts)
vim.api.nvim_set_keymap("n", "<Leader><leader>s", "<Plug>(easymotion-s2)", opts)
vim.api.nvim_set_keymap("n", "<Leader><leader>w", "<Plug>(easymotion-w)", opts)
vim.api.nvim_set_keymap("n", "<Leader><leader>b", "<Plug>(easymotion-b)", opts)

vim.api.nvim_set_keymap("v", "<leader><leader>f", "<Plug>(easymotion-prefix)", opts)
vim.api.nvim_set_keymap("v", "<Leader><leader>l", "<Plug>(easymotion-lineforward)", opts)
vim.api.nvim_set_keymap("v", "<Leader><leader>j", "<Plug>(easymotion-j)", opts)
vim.api.nvim_set_keymap("v", "<Leader><leader>k", "<Plug>(easymotion-k)", opts)
vim.api.nvim_set_keymap("v", "<Leader><leader>h", "<Plug>(easymotion-linebackward)", opts)
vim.api.nvim_set_keymap("v", "<Leader><leader>s", "<Plug>(easymotion-s2)", opts)
vim.api.nvim_set_keymap("v", "<Leader><leader>w", "<Plug>(easymotion-w)", opts)
vim.api.nvim_set_keymap("v", "<Leader><leader>b", "<Plug>(easymotion-b)", opts)

-- nvim tree

-- utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
-- utils.map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
-- utils.map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Reload configuration without restart nvim
utils.map('n', '<leader><leader>r', ':so %<CR>')

-- terminal
utils.map('n', '<leader><leader>@', ':terminal<CR>')

-- window
-- Move around splits using Ctrl + {h,j,k,l}
utils.map('n', '<C-h>', '<C-w>h')
utils.map('n', '<C-j>', '<C-w>j')
utils.map('n', '<C-k>', '<C-w>k')
utils.map('n', '<C-l>', '<C-w>l')
