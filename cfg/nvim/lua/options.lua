local opt = vim.opt
local g = vim.g

g.mapleader = " "
g.encoding = "utf8"
g.netrw_banner = 0

opt.confirm = true
opt.laststatus = 3
opt.title = true
opt.clipboard = "unnamedplus"
opt.cmdheight = 1
opt.cursorline = true

-- Indentline
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true

opt.hidden = true
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.number = false
opt.relativenumber = true
opt.ruler = true

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 8
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.shortmess = "F"

opt.whichwrap:append "<>[]hl"
opt.fillchars = { eob = " " }
opt.fillchars:append('vert:▕')

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

local default_plugins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}

for _, plugin in pairs(default_plugins) do
   g["loaded_" .. plugin] = 1
end
