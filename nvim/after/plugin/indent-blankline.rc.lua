local status, indent_blankline = pcall(require, "indent_blankline")
if not status then return end

vim.cmd[[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd[[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd[[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd[[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd[[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd[[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
indent_blankline.setup{
	show_trailing_blankline_indent = false,
	show_end_of_line = true,
	space_char_blankline = " ",
	char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
	},
}