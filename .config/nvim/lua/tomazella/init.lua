require('tomazella.packer')
require('tomazella.remap')
require('tomazella.set')
require('tomazella.plugins')

vim.g.lightline = { colorscheme = 'one' }
require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'moon',
})
vim.cmd('colorscheme rose-pine')

