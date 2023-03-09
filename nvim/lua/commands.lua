vim.cmd[[command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument]]
vim.cmd[[autocmd BufWritePost * Prettier]]