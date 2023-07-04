require('init')

--require('pluginConfigs/dashboard')
require('pluginConfigs/fugitive')
require('pluginConfigs/indent_blankline')
require('pluginConfigs/lsp')
require('pluginConfigs/telescope')
--require('pluginConfigs/tokyonight')

--require('pluginConfigs/treesitter') -- This throws errors, so just disabling for now

vim.opt.incsearch      = true
vim.opt.scrolloff      = 8
vim.opt.updatetime     = 50
--vim.opt.colorcolumn = '80' Makes weird line appear
vim.opt.splitright     = true

-- Save undo history
vim.opt.undodir        = '/home/cam/.nvim/undodir'
vim.opt.undofile       = true

-- Auto Load filetype files
--vim.opt.filetype       = true

--Text Rendering
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.cursorline     = true


vim.opt.expandtab      = true
vim.opt.shiftwidth     = 4
vim.opt.tabstop        = 4
vim.opt.softtabstop    = 4

vim.opt.autoindent     = true
vim.opt.smartindent    = true


vim.opt.wrap = false


--UI Options
vim.opt.termguicolors = true


--Theme
--vim.cmd[[colorscheme tokyonight]]

require("catppuccin").setup({
    transparent_background = true
})


vim.cmd.colorscheme "catppuccin-mocha"
