local options = {
	backup = false,
	cmdheight = 2,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	pumheight = 10,
	showmode = false,
	termguicolors = true,
	expandtab = true,
    --showtabline = 2,
	smartcase = true,
	smartindent = true,
	swapfile = false,
	updatetime = 100,
	signcolumn = "yes",
	scrolloff = 8,
	sidescrolloff = 8,
	mouse = "a",
	bg = "dark",
	tabstop=4,
	shiftwidth=4,
	splitbelow = true,
	splitright = true,
	number = true,
	relativenumber = false,
	wrap = false,
	cursorline = true,
}

vim.cmd [[
    set guifont=FiraCode\ Nerd\ Font:h15.5
    " set guifont=monospace
]]

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- Autocommand that reloads neovim whenever you save the options.lua file
vim.cmd [[
	augroup options_reload
		autocmd!
		autocmd BufWritePost options.lua source <afile>
	augroup end
]]
