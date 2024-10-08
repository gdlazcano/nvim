-- no wrap
vim.opt.wrap = false

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tab settings
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- undo settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("config") .. "/undodir"
vim.opt.undofile = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- cursorline
vim.opt.cursorline = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- disable swap files
vim.opt.swapfile = false

-- backspace
vim.opt.backspace = "indent,eol,start"

vim.opt.iskeyword:append("-")
vim.opt.clipboard = "unnamedplus"

vim.g.copilot_filetypes = {
    ["markdown"] = true,
    ["yaml"] = true,
    ["templ"] = true
}

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- colorcolumn
vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8

vim.filetype.add({ extension = { templ = "templ" } })
