-- Mason formatters auto-installation
-- Check and install only missing formatters on Neovim startup

local mason_ok, mason = pcall(require, 'mason')
if not mason_ok then
  return
end

local formatters = {
  'stylua',
  'prettierd',
  'clang-format',
  'cmakelang',
  'markdownlint',
  'sql-formatter',
}

-- Auto-install missing formatters on Neovim startup
vim.api.nvim_create_autocmd('VimEnter', {
  desc = 'Auto-install missing Mason formatters',
  group = vim.api.nvim_create_augroup('mason-formatters', { clear = true }),
  callback = function()
    vim.schedule(function()
      local installed = mason.get_installed_package_names()
      for _, formatter in ipairs(formatters) do
        if not vim.tbl_contains(installed, formatter) then
          vim.cmd('MasonInstall ' .. formatter)
        end
      end
    end)
  end,
  once = true,
})

