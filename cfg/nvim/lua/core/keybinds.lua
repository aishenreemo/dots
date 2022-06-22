local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- resizing windows
map("n", "<C-S-Up>", "<cmd>:resize +2<CR>")
map("n", "<C-S-Down>", "<cmd>:resize -2<CR>")
map("n", "<C-S-Left>", "<cmd>:vertical resize +2<CR>")
map("n", "<C-S-Right>", "<cmd>:vertical resize -2<CR>")

-- nvim tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

-- buffer navigation
map("n", "<S-w>", "<cmd>bd!<CR>")
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
