return {
    "rbong/vim-flog",
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
        "tpope/vim-fugitive",
    },
    config = function()
        vim.keymap.set("n", "<leader>t", vim.cmd.Flog)
    end
}
