-- Reset cursor before exiting
local setguicursor = vim.api.nvim_create_augroup("setguicursor", { clear = true })
vim.api.nvim_create_autocmd(
    "VimLeave",
    {
        pattern = "*",
        command = "set guicursor=a:block-blinkon0",
        group = setguicursor
    }
)
