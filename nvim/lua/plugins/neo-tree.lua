return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set('n', '<C-e>', ':Neotree filesystem reveal left<CR>')
        require("neo-tree").setup({
            source_selector = {
                winbar = true,
                statusline = false
            },
            close_if_last_window = true,
            buffers = {
                follow_current_file = {enabled = true},
            },
            filesystem = {
                follow_current_file = {enabled = true},
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
   end
}
