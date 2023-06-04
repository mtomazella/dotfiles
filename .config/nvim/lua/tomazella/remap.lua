vim.g.mapleader = " "

-- Open explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines / Selections
vim.keymap.set("v", "<C-A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<C-A-k>', ':move -2<CR>')
vim.keymap.set('n', '<C-A-j>', ':move +1<CR>')

-- Prevent replace of yanked value on paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Delete does not override the yank register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Don't really know what Q does, but will just assume its bad
vim.keymap.set("n", "Q", "<nop>")

-- Format
vim.keymap.set("n", "<A-f>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace current word in the document
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Reload packer
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/tomazella/packer.lua<CR>");

-- Load current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Quickly insert an empty new line without entering insert mode
vim.keymap.set('n', 'o', 'o<Esc>')
vim.keymap.set('n', 'O', 'O<Esc>')

-- Delete, not cut
vim.keymap.set('n', 'd', '"_d', { noremap = true })
vim.keymap.set('n', '<leader>d', 'd', { noremap = true })
vim.keymap.set('v', 'd', '"_d', { noremap = true })
vim.keymap.set('v', '<leader>d', 'd', { noremap = true })

-- Tab
vim.keymap.set('n', '<Tab>', '>>')
vim.keymap.set('n', '<S-Tab>', '<<')
vim.keymap.set('i', '<Tab>', '<C-v><Tab>')

-- Save
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('i', '<C-s>', '<C-O>:w<CR>')
vim.keymap.set('v', '<C-s>', '<C-C>:w<CR>')

-- Tab navigation
vim.keymap.set('n', '<C-A-h>', 'gT')
vim.keymap.set('n', '<C-A-l>', 'gt')
vim.keymap.set('i', '<C-A-h>', '<C-O>gT')
vim.keymap.set('i', '<C-A-l>', '<C-O>gt')

-- Save and close buffer
vim.keymap.set('n', '<C-A-w>', ':wq<CR>')
vim.keymap.set('i', '<C-w>', '<C-O>:wq<CR>')

-- Select entire file
vim.keymap.set('n', 'vie', 'ggVG')
