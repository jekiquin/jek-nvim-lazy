vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc><cmd>update<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<C-j>", "5j")
vim.keymap.set({ "n", "v" }, "<C-k>", "5k")
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system cliboard" })
vim.keymap.set("n", "<leader>qa", ":q<CR>", { desc = "Quit all" })

