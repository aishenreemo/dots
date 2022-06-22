local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim/"

if fn.empty(fn.glob(install_path)) > 0 then
	print "installing packer..."

	fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path
	}
        vim.cmd("packadd packer.nvim")
        require("plugins.init")
        vim.cmd("PackerSync")
end
