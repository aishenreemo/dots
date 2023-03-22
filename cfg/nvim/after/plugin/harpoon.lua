local harpoon_mark_ok, harpoon_mark = pcall(require, "harpoon.mark")
local harpoon_ui_ok, harpoon_ui = pcall(require, "harpoon.ui")

if harpoon_mark_ok then
    vim.keymap.set("n", "<leader>a", harpoon_mark.add_file)
end

if harpoon_ui_ok then
    vim.keymap.set("n", "<leader>n", harpoon_ui.toggle_quick_menu)
    vim.keymap.set("n", "<leader>1", function() harpoon_ui.nav_file(1) end)
    vim.keymap.set("n", "<leader>2", function() harpoon_ui.nav_file(2) end)
    vim.keymap.set("n", "<leader>3", function() harpoon_ui.nav_file(3) end)
    vim.keymap.set("n", "<leader>4", function() harpoon_ui.nav_file(4) end)
    vim.keymap.set("n", "<leader>5", function() harpoon_ui.nav_file(5) end)
    vim.keymap.set("n", "<leader>6", function() harpoon_ui.nav_file(6) end)
    vim.keymap.set("n", "<leader>7", function() harpoon_ui.nav_file(7) end)
    vim.keymap.set("n", "<leader>8", function() harpoon_ui.nav_file(8) end)
    vim.keymap.set("n", "<leader>9", function() harpoon_ui.nav_file(9) end)
end
