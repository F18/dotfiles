return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()

        local harpoon = require("harpoon")
        -- local harpoonui = require("harpoon.ui")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
        vim.keymap.set("n", "<C-i>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        -- Map Ctrl+1  and Ctrl+2. These are special characters.
        -- Go into insert mode and type "CtrL+v Ctrl+1" to generate specifal character
        vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
        vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
        -- vim.keymap.set("n", "<C-n>", function() harpoon.ui:nav_next() end)
        -- vim.keymap.set("n", "<C-p>", function() harpoon.ui:nav_next() end)
        -- vim.keymap.set("n", "<C-n>", function() harpoonui.next() end)
        --vim.keymap.set("n", "<C-p>", function() harpoonui.prev() end)
    end
}
