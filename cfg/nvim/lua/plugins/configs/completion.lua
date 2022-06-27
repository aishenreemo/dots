local is_cmp_present, cmp = pcall(require, "cmp")
local is_luasnip_present, luasnip = pcall(require, "luasnip")
local M = {}

if not is_cmp_present then
    return
end

if is_luasnip_present then
    require("luasnip.loaders.from_vscode").lazy_load()
    M.snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    }
end

M.formatting = {
    format = function(entry, vim_item)
        vim_item.kind = "  "
        vim_item.menu =
        ({
            nvim_lsp = " ",
            luasnip = " ",
            buffer = " ",
            path = " ",
        })[entry.source.name]
        return vim_item
    end
}

M.window = {
    completion = { border = "solid" },
    documentation = { border = "solid" }
}


M.mapping = {
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif is_luasnip_present and luasnip.expandable() then
                luasnip.expand()
            elseif is_luasnip_present and luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,
        { "i", "s" }
    ),
    ["<S-Tab>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif is_luasnip_present and luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end,
        { "i", "s" }
    ),
    ["<Down>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif is_luasnip_present and luasnip.expandable() then
                luasnip.expand()
            elseif is_luasnip_present and luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,
        { "i", "s" }
    ),
    ["<Up>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif is_luasnip_present and luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end,
        {"i", "s"}
    ),
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
}

M.sources = {
    { name = "nvim_lsp_signature_help" },
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
}

cmp.setup(M)
