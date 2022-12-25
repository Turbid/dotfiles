--local cmd = vim.cmd
local opt = vim.opt
local api = vim.api

opt.number = true
--opt.cursorline = true

opt.title = true
opt.laststatus = 3
opt.showmode = false

opt.clipboard = 'unnamedplus'

opt.ignorecase = true 
opt.smartcase = true
opt.inccommand = 'split'

opt.listchars = 'tab:▒░,trail:·,eol:¶'

opt.splitright = true
opt.splitbelow = true

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end
})

require'nvim-treesitter.configs'.setup{
  ensure_installed={"lua", "python"},
  auto_install=true,
  highlight={
    enable=true,
  },
}

require'lspconfig'.pyright.setup{}
