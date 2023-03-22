vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function (_)
        vim.cmd.lcd("%:p:h")
    end
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    callback = function (data)
        if data.file:match(".ms$") then
            vim.cmd.setfiletype("groff")
        end
    end
})
