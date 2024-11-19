vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.guicursor = ""

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 16
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"

vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.shell = "/bin/zsh"

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- UI
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

vim.opt.cmdheight = 0
-- vim.cmd([[colorscheme moonfly]])
-- vim.cmd([[TransparentEnable]])

-- Lines
vim.opt.wrap = false

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸",
}

vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])
