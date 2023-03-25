local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            ".git"
        }
    }
})

local function live_grep() builtin.live_grep({ initial_mode = "normal" }) end
local function buffers() builtin.buffers({ initial_mode = "normal" }) end
local function help_tags() builtin.help_tags({ initial_mode = "normal" }) end
local function find_files() builtin.find_files({ initial_mode = "normal" }) end
local function find_files_hidden() builtin.find_files({ initial_mode = "normal", hidden = true }) end

vim.keymap.set("n", "<leader>flg", live_grep, {})
vim.keymap.set("n", "<leader>fb", buffers, {})
vim.keymap.set("n", "<leader>f?", help_tags, {})
vim.keymap.set("n", "<leader>ff", find_files, {})
vim.keymap.set("n", "<leader>fh", find_files_hidden, {})
