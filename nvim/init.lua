-- Install Lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load your custom vim settings
require("set")
require("remap")
require("autocmd")

-- Initialize and activate Lazy package manager
require("lazy").setup("plugins")

-- Initialize and activate Lazy package manager
require("colors")
