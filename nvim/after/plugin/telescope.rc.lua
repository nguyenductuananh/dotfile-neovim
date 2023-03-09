local status, telescope = pcall(require, "telescope")
-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`

if not status then return end
telescope.setup{
	defaults = {
		mappings = {
			i = {
				["<C-u>"] = false,
				["<C-d>"] = false,
			},
		},
	},
}

-- Enable telescope fzf native, if installed
pcall(require("telescope").load_extension, "fzf")

-- See `:help telescope.builtin`
vim.keymap.set(
	"n",
	"<leader>/",
	function()
		-- You can pass additional configuration to telescope to change theme, layout, etc.
		require("telescope.builtin").current_buffer_fuzzy_find(
			require("telescope.themes").get_dropdown{
				winblend = 10,
				previewer = false,
			}
		)
	end,
	{ desc = "[/] Fuzzily search in current buffer]" }
)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, {
	desc = "[S]earch [H]elp",
})
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, {
	desc = "[S]earch current [W]ord",
})
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, {
	desc = "[S]earch by [G]rep",
})
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, {
	desc = "[S]earch [D]iagnostics",
})