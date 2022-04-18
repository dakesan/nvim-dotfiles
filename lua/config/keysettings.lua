local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jj', '<Esc>')           -- jk to escape
utils.map("i", "<C-s>", "<Esc>:w<CR>i", { noremap = true })
utils.map("n", "<C-s>", ":w<CR>", { noremap = true })
utils.map("n", "<C-j>", "<Plug>(edgemotion-j)")
utils.map("n", "<C-k>", "<Plug>(edgemotion-k)")

-- VSCode which key
-- vim.cmd [[nnoremap <space> <Cmd>call VSCodeNotify('whichkey.show')<CR>]]

-- substitute
utils.map("n", "<leader><leader>p", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
utils.map("n", "<leader><leader>P", "<cmd>lua require('substitute').line()<cr>", { noremap = true })
utils.map("n", "<leader><leader>p", "<cmd>lua require('substitute').eol()<cr>", { noremap = true })
utils.map("x", "<leader><leader>p", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })

-- レジスタを汚さないxやs
utils.map("n", "s", '"_s', {noremap=true})
utils.map("n", "s", '"_s', {noremap=true})
utils.map("n", "S", '"_S', {noremap=true})
utils.map("v", "S", '"_S', {noremap=true})
utils.map("n", "x", '"_x', {noremap=true})
utils.map("n", "x", '"_x', {noremap=true})
utils.map("n", "X", '"_X', {noremap=true})
utils.map("v", "X", '"_X', {noremap=true})
utils.map("n", "c", '"_c', {noremap=true})
utils.map("n", "c", '"_c', {noremap=true})
utils.map("n", "C", '"_C', {noremap=true})
utils.map("v", "C", '"_C', {noremap=true})

utils.map("v", "C", '"_C', {noremap=true})
utils.map("v", "C", '"_C', {noremap=true})
utils.map("v", "C", '"_C', {noremap=true})
utils.map("v", "C", '"_C', {noremap=true})


utils.map("n", "<leader><leader>f", "<Plug>(easymotion-prefix)", { silent = true })
utils.map("n", "<Leader><leader>l", "<Plug>(easymotion-lineforward)", {silent=true})
utils.map("n", "<Leader><leader>j", "<Plug>(easymotion-j)", {silent=true})
utils.map("n", "<Leader><leader>k", "<Plug>(easymotion-k)", {silent=true})
utils.map("n", "<Leader><leader>h", "<Plug>(easymotion-linebackward)", {silent=true})
utils.map("n", "<Leader><leader>s", "<Plug>(easymotion-s2)", {silent=true})