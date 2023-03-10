local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- remove highlight
map("n", "<esc>", ":noh <CR>")

-- shift + j cursor
map("n", "J", "mzJ`z")

-- vertical navigation
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- replace thingy but dont copy the deleted thing in clipboard
map("x", "<leader>p", "\"_dP")

-- rename a variable
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- make current file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

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
map("n", "<leader>q", "<cmd>bd | bp<CR>")
map("n", "<leader>h", "<cmd>BufferLineCyclePrev<CR>")
map("n", "<leader>l", "<cmd>BufferLineCycleNext<CR>")

-- lsp
map("n", "<leader>p", "<cmd>lua vim.diagnostic.open_float()<CR>")
