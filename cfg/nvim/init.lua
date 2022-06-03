local is_present, impatient = pcall(require, "impatient")

if is_present then
	impatient.enable_profile()
end

require("core.packer")
require("core.options")
require("core.keybinds")
require("core.colors")
