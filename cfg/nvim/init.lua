local is_present, impatient = pcall(require, "impatient")

if is_present then
    impatient.enable_profile()
end

require("core.packer")
require("core.options")
require("plugins.init")
require("core.keybinds")

vim.api.nvim_create_autocmd({ "VimEnter" }, { 
    callback = function (data)
        if vim.fn.isdirectory(data.file) == 1 then
            vim.cmd.cd(data.file)
            require("nvim-tree.api").tree.open()
        end
    end
})
