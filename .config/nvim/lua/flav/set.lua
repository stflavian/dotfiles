-- General settings
vim.cmd(":let g:loaded_node_provider = 0")
vim.cmd(":let g:loaded_python3_provider = 0")
vim.cmd(":let g:loaded_ruby_provider = 0")
vim.cmd(":let g:loaded_perl_provider = 0")

-- Add line numbers
vim.opt.nu = true

-- Add spell check
vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.colorcolumn = "87"
vim.opt.scrolloff = 4

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
            vim.keymap.set("n", "<leader>r", ":10split term://python %<CR>")
        elseif ft == "julia" then
            vim.opt.tabstop = 4
            vim.opt.softtabstop = 4
            vim.opt.shiftwidth = 4
            vim.opt.colorcolumn = "92"
            vim.keymap.set("n", "<leader>r", ":10split term://julia %<CR>")
        elseif ft == "bash" then
            vim.opt.tabstop = 2
            vim.opt.softtabstop = 2
            vim.opt.shiftwidth = 2
            vim.opt.colorcolumn = "80"
            vim.keymap.set("n", "<leader>r", ":10split term://bash %<CR>")
        elseif ft == "matlab" then
            vim.opt.tabstop = 4
            vim.opt.softtabstop = 4
            vim.opt.shiftwidth = 4
            vim.opt.colorcolumn = "80"
            vim.keymap.set("n", "<leader>r", ":10split term://matlab -batch %:r<CR>")
        elseif ft == "go" then
            vim.opt.tabstop = 4
            vim.opt.softtabstop = 4
            vim.opt.shiftwidth = 4
            vim.opt.colorcolumn = "90"
            vim.keymap.set("n", "<leader>r", ":10split term://go run %<CR>")
        elseif ft == "tex" then
            vim.opt.tabstop = 2
            vim.opt.softtabstop = 2
            vim.opt.shiftwidth = 2
            vim.opt.colorcolumn = "90"
            vim.opt.wrap = true
            vim.opt.linebreak = true
            vim.keymap.set("n", "<leader>r", ":!pdflatex main.tex <CR>")
        end
    end
})
