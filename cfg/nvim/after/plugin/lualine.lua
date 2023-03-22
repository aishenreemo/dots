require("lualine").setup()

local ok, _ = pcall(require, "xresources")
if ok then vim.cmd.colorscheme("xresources") end
