local telescope = require("telescope.builtin")

local function live_grep() telescope.live_grep({ initial_mode = "normal" }) end
local function buffers() telescope.buffers({ initial_mode = "normal" }) end
local function help_tags() telescope.help_tags({ initial_mode = "normal" }) end
local function find_files() telescope.find_files({ initial_mode = "normal" }) end
local function find_files_hidden() telescope.find_files({ initial_mode = "normal", hidden = true }) end

vim.keymap.set("n", "<leader>flg", live_grep, {})
vim.keymap.set("n", "<leader>fb", buffers, {})
vim.keymap.set("n", "<leader>f?", help_tags, {})
vim.keymap.set("n", "<leader>ff", find_files, {})
vim.keymap.set("n", "<leader>fh", find_files_hidden, {})
