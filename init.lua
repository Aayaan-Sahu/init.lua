require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.nvimtree"
require "user.floaterm"
require "user.lualine"
require "user.dashboard"
require "user.gitsigns"
require "user.lazygit"
require "user.trouble"
require "user.bufferline"
require "user.toggleterm"
require "user.impatient"
require "user.whichkey"

-- Autocommand that reloads neovim whenever you save the init.lua file
vim.cmd [[
    augroup init_reload
        autocmd!
        autocmd BufWritePost init.lua source <afile>
    augroup end
]]
