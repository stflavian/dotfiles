vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.api.nvim_create_autocmd('FileType', {
    pattern = { "*" },
    callback = function(args) 
        local ft = vim.bo[args.buf].filetype
        if ft == "python" then
            vim.opt.tabstop = 4
            vim.opt.softtabstop = 4
            vim.opt.shiftwidth = 4
            vim.opt.colorcolumn = "79"
        elseif ft == "julia" then
            vim.opt.tabstop = 4
            vim.opt.softtabstop = 4
            vim.opt.shiftwidth = 4
            vim.opt.colorcolumn = "92"
        elseif ft == "bash" then
            vim.opt.tabstop = 2
            vim.opt.softtabstop = 2
            vim.opt.shiftwidth = 2
            vim.opt.colorcolumn = "80"
        end
    end
})
