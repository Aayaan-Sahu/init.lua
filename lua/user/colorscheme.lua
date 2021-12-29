local colorscheme = "onedarker"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

-- Autocommand that reloads neovim whenever you save the colorscheme.lua file
vim.cmd [[
	augroup colorscheme_reload
		autocmd!
		autocmd BufWritePost colorscheme.lua source <afile>
	augroup end
]]
