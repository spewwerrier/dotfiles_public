vim.lsp.enable({'gopls'})

-- now that nvim has ootb support for autocompletion from v0.11 no need to install 10 different
-- plugin for autocompletion
-- not exactly ootb since I have to config this thing
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = unnamedplus
vim.o.cmdheight = 0

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>q', ':bd<enter>')
vim.keymap.set('n', '<C-s>', ':w<enter>')


-- v0.11 has virtual line... without a plugin??? Whattttt
vim.diagnostic.config({
  virtual_lines = true,
  virtual_lines = {
   current_line = true,
  },
})

-- Note: I would like to try neovim after v0.12 when plugin manager and multicursors gets released
-- I want to try out telescope and a good theme with the native plugin manager



-- https://github.com/contour-terminal/contour/blob/master/docs/vt-extensions/color-palette-update-notifications.md
