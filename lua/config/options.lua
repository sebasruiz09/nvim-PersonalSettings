local options = {
 backup = false,
 clipboard = "unnamedplus",
 cmdheight = 1,
 completeopt = {"menuone","noselect"},
 conceallevel = 0,
 fileencoding = "utf-8",
 encoding = "utf-8",
 hlsearch = true,
 ignorecase = true,
 mouse = "a",
 pumheight = 10,
 showtabline = 2,
 smartcase = true,
 showmode = false,
 smartindent = true,
 splitbelow = true,
 splitright = true,
 swapfile = false,
 termguicolors = true,
 timeoutlen = 1000,
 undofile = true,
 updatetime = 300,
 writebackup = false,
 expandtab = true,
 shiftwidth = 2,
 tabstop = 2,
 cursorline = true,
 number = true,
 numberwidth = 4,
 signcolumn = "yes",
 wrap = false,
 scrolloff = 8,
 sidescrolloff = 8,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end
