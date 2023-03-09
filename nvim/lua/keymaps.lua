-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Tab control keymap
vim.cmd[[nnoremap tp :tabprev<CR>]]
vim.cmd[[nnoremap tn :tabnext<CR>]]
vim.cmd[[nnoremap tc :tabclose<CR>]]

vim.keymap.set("n", "<Leader>z", "<Cmd>lua require('maximize').toggle()<CR>")
vim.cmd[[nnoremap <leader>ntt :NERDTreeToggle<CR>]]
vim.cmd[[nnoremap <leader>nts :NERDTreeFind<CR>]]
vim.cmd[[nnoremap <leader>ntf :NERDTreeFocus<CR>]]

--Tab move tab
vim.cmd[[nnoremap <leader>l <C-w>l]]
vim.cmd[[nnoremap <leader>k <C-w>k]]
vim.cmd[[nnoremap <leader>j <C-w>j]]
vim.cmd[[nnoremap <leader>h <C-w>h]]

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", {
	expr = true,
	silent = true,
})
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", {
	expr = true,
	silent = true,
})

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

