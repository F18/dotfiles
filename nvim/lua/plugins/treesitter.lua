return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.install").prefer_git = true

        local config = require("nvim-treesitter.configs")
        config.setup({
            -- ensure_installed = {"bash", "python", "lua", "javascript"},
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
        })
    end
}
