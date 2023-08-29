--local cmd = vim.cmd
local opt = vim.opt
local api = vim.api

opt.swapfile = false

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

require('lualine').setup{
  options = {
    icons_enabled = true,
    theme = 'nord',
  }
}

require('lualine').get_config()

require'nvim-treesitter.configs'.setup{
  ensure_installed = {"lua", "python"},
  auto_install = true,
  highlight = {
    enable = true,
    disable = function(lang, buf)
     local max_filesize = 100 * 1024 -- 100 KB
     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
     if ok and stats and stats.size > max_filesize then
      return true
     end
    end,
  },
}

require'lspconfig'.pyright.setup{}

require'py_lsp'.setup {
  -- This is optional, but allows to create virtual envs from nvim
  host_python = "/usr/bin/env python3"
}

require('xkbswitch').setup()

local cmp = require'cmp'

cmp.setup ({
  window = {
    --completion = cmp.config.window.bordered(),
    --documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    })
})
