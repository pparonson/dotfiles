-- print("opt.lua")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 250
-- vim.opt.colorcolumn = "100"

-- vim.cmd 'colorscheme material'
-- vim.g.material_style = "Darker"
vim.cmd.colorscheme "catppuccin"

vim.g.mapleader = ' '

local function create_augroup(group_name, definitions)
  vim.cmd('augroup ' .. group_name .. ' autocmd! endaugroup')
  for _, def in ipairs(definitions) do
    vim.cmd('autocmd ' .. table.concat(def, ' '))
  end
end

create_augroup('CursorShape', {
  {'VimLeave,VimSuspend', '*', 'set guicursor=a:hor20-blinkon175'}
})
