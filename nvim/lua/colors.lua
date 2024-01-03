function MyColor(color)
    -- set default
    color = color or "rose-pine"
    -- set vim colorscheme
    vim.cmd.colorscheme(color)
    -- set transperency for rose-pine
    if color == "rose-pine" then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFlat", { bg = "none" })
    end
end

--MyColor("catppuccin")
--MyColor("monokai-pro")
MyColor("rose-pine")
