return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()

        local harpoon = require("harpoon")

        harpoon:setup()

        --  Harpoon marked files 1 through 4
        vim.keymap.set("n", "<a-1>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<a-2>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<a-3>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<a-4>", function() harpoon:list():select(4) end)

        -- Harpoon next and previous.
        vim.keymap.set("n", "<a-5>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<a-6>", function() harpoon:list():next() end)

        -- Harpoon user interface.
        vim.keymap.set("n", "<a-7>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<a-8>", function() harpoon:list():append() end)

    end
}
