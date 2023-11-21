vim.g.mapleader = " "

vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })

vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("n", "<leader>h", ":nohl<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- gitsigns
vim.keymap.set("n", "<leader>jd", ":Gitsigns diffthis<CR>")
vim.keymap.set("n", "<leader>jc", ":Gitsigns setqflist<CR>")
vim.keymap.set("n", "<leader>jl", ":Gitsigns blame_line<CR>")
vim.keymap.set("n", "<leader>jp", ":Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>js", ":Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<leader>jh", ":Gitsigns toggle_deleted<CR>")
vim.keymap.set("n", "<leader>jj", ":Gitsigns reset_hunk<CR>")
vim.keymap.set("v", "<leader>jj", ":Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>jn", ":Gitsigns next_hunk<CR>")

-- format selection
vim.keymap.set("v", "<leader>p", vim.lsp.buf.format)

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>fc", ":Telescope live_grep<CR>")

-- move lines up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- bufferline
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", ">b", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", "<b", ":BufferLineMovePrev<CR>")

vim.keymap.set("n", "<C-c>", function()
  require("bufdelete").bufdelete(0, false)
end)

-- comments
vim.keymap.set("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end)

vim.keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- select all
vim.keymap.set("n", "<C-a>", "ggVG")
