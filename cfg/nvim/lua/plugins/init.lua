require("packer").startup(function()
	use("lewis6991/impatient.nvim")
	use("wbthomason/packer.nvim")
	use("gpanders/editorconfig.nvim")
	use("wakatime/vim-wakatime")
	use("elkowar/yuck.vim")
	use("godlygeek/tabular")

	use { 
		"andweeb/presence.nvim",
		config = function()
			require("presence"):setup()
		end
	}

	use { 
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({ disable_netrw = true })
		end
	}
end)
