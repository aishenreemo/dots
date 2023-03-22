local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>fs", telescope.live_grep, {})
vim.keymap.set("n", "<leader>fk", telescope.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
vim.keymap.set("n", "<leader>fj", telescope.find_files, {})

