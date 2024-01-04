-- remap period repeater to ;
-- vim.keymap.set("n", ";", ".")

-- unhighlight search results
vim.keymap.set("n", "<leader>x", ":noh<cr>", { desc = "unhighlight search" })

-- wrap paragraph
vim.keymap.set("n", "W", "gwap", { desc = "[W]rap paragraph" })

-- open netrw directory explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "netrw explorer" })

-- move blocks of code around in viusual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor centered
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", ",", "<C-d>zz")
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
-- vim.keymap.set("n", ".", "<C-u>zz")
vim.keymap.set("n", ";", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- after yanking you can sticky paste the same thing over and over again
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard or vim clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deleting to void register in normal an visual mode
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- keep for vertical mode
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- switch projects
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format buffer
vim.keymap.set("n", "<leader>x", vim.lsp.buf.format)
-- chmod to executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- move between buffer windows
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- quick fix list
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search and replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("i", "jj", "<Esc>`^:w<cr>:noh<cr>")
vim.keymap.set("i", "<C-s>", "<Esc>`^:w<cr>:noh<cr>i")
vim.keymap.set("n", "<C-s>", ":w<cr>:noh<cr>")
