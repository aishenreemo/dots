local is_present, impatient = pcall(require, "impatient")

if is_present then
	impatient.enable_profile()
end

require("core.packer")
require("core.options")
require("plugins.init")
require("core.keybinds")

vim.cmd("colorscheme challenger_deep")
vim.cmd("highlight BufferlineDirectory guibg=#1e1c31")
vim.cmd("highlight BufferlineCloseButtonSelected guifg=#ff8080")
vim.cmd("highlight BufferlineCloseButtonVisible guifg=#ff8080")
