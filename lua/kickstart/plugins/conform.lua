return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require 'conform'

    conform.setup {
      formatters_by_ft = {
        javascript = { 'prettierd', 'eslint_d' },
        typescript = { 'prettierd', 'eslint_d' },
        javascriptreact = { 'prettierd', 'eslint_d' },
        typescriptreact = { 'prettierd', 'eslint_d' },
        svelte = { 'prettierd', 'eslint_d' },
        css = { 'prettierd', 'eslint_d' },
        html = { 'prettierd', 'eslint_d' },
        json = { 'prettierd', 'eslint_d' },
        yaml = { 'prettierd', 'eslint_d' },
        markdown = { 'prettierd', 'eslint_d' },
        graphql = { 'prettierd', 'eslint_d' },
        liquid = { 'prettierd', 'eslint_d' },
        lua = { 'stylua' },
        python = { 'isort', 'black' },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    }

    vim.keymap.set({ 'n', 'v' }, '<leader>mp', function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      }
    end, { desc = 'Format file or range (in visual mode)' })
  end,
}
