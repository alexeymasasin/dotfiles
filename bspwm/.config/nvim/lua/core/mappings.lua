vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>E", ":Neotree float toggle<CR>", { desc = "Reveal neo-tree (floating)" })
vim.keymap.set("n", "<leader>e", ":Neotree right toggle<CR>", { desc = "Reveal neo-tree (left)" })

-- UI
vim.keymap.set("n", "<leader>T", "<cmd>:TransparentToggle<CR>", { desc = "Toggle background transparency" })

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>o", ":wincmd w<CR>", { desc = "Toggle focus" })

vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close current buffer (no save)" })
vim.keymap.set("n", "<leader>QA", ":qa!<CR>", { desc = "Close neovim (no save)" })

-- Move lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line up" }) -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" }) -- move line down(n)

-- Comments
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>", { desc = "Comment a single line" })

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>", { desc = "Split vertical" })
vim.keymap.set("n", "\\", ":split<CR>", { desc = "Split horizontal" })

-- Other
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save" })
vim.keymap.set("i", "jj", "<Esc>")

-- Telescope
vim.keymap.set("n", "<leader>ts", ":Telescope colorscheme<CR>", { desc = "Browse colorschemes with preview" })

-- Errors
vim.keymap.set("n", "<leader>n", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Expand error" })

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })

vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>", { desc = "Pick a buffer to close" })
vim.keymap.set("n", "<leader>X", ":BufferLineCloseRight<CR>", { desc = "Close a buffer to right" })
vim.keymap.set("n", "<leader>s", ":BufferLineSortByTabs<CR>", { desc = "Sort buffers by tabs" })

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Terminal float" })
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Terminal horizontal" })
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>", { desc = "Terminal vertical" })
