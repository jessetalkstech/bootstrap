-- Configure line options
vim.opt.number = true
vim.opt.relativenumber = true

-- Configure tab stop
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Turn on cursor line highlighting
vim.opt.cursorline = true

-- Set transparent background
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
