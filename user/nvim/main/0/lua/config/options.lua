-- Opts
local opts = { noremap = true, silent = true }

-- Leader
vim.g.mapleader = " "

-- True Colors
vim.opt.termguicolors = true

-- Theme
vim.cmd("colorscheme tokyonight-night")

-- TMUX Reload
vim.fn.system("tmux source-file ~/.config/tmux/tmux.conf &")

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Status
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.showtabline = 2

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Remaps
-- OIL
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { silent = true, desc = "Open parent directory" })

-- WHICHKEY
local wk = require("which-key")
vim.keymap.set("n", "<leader>w", "<cmd>WhichKey<CR>", { desc = "Whichkey", silent = true })

-- OUTLINE
vim.keymap.set("n", "<leader>o", "<cmd>Outline!<CR>", { desc = "Toggle outline", silent = true })

-- LAZYGIT
vim.keymap.set("n", "<leader>g", "<cmd>FloatermNew lazygit<CR>", { desc = "Lazygit", silent = true })

-- NEOGEN
vim.keymap.set("n", "<leader>n", "<cmd>Neogen<CR>", { desc = "Generate Notation", silent = true })

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set("n", "Ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "Fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "Fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "Fh", builtin.help_tags, { desc = "Telescope help tags" })

-- BUFFERS MOVEMENT
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<CR>", { silent = true })
vim.keymap.set("n", "q", "<cmd>bdelete!<CR>", { silent = true })

-- DIAL
local dial = require("dial.map")
vim.keymap.set("n", "<C-a>", function()
	dial.manipulate("increment", "normal")
end)
vim.keymap.set("n", "<C-x>", function()
	dial.manipulate("decrement", "normal")
end)
vim.keymap.set("n", "g<C-a>", function()
	dial.manipulate("increment", "gnormal")
end)
vim.keymap.set("n", "g<C-x>", function()
	dial.manipulate("decrement", "gnormal")
end)
vim.keymap.set("x", "<C-a>", function()
	dial.manipulate("increment", "visual")
end)
vim.keymap.set("x", "<C-x>", function()
	dial.manipulate("decrement", "visual")
end)
vim.keymap.set("x", "g<C-a>", function()
	dial.manipulate("increment", "gvisual")
end)
vim.keymap.set("x", "g<C-x>", function()
	dial.manipulate("decrement", "gvisual")
end)

-- REMOVE ARROW KEYS
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>", opts)
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>", opts)
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>", opts)
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>", opts)
