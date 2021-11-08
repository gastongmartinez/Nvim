local prettier = function()
  return {
    exe = "prettier",
    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--double-quote" },
    stdin = true,
  }
end

local black = function()
  if vim.fn.has('win32') == 1 then
    return {
      exe = "python -m black",
      args = {},
      stdin = false,
    }
  else
    return {
      exe = "black",
      args = {},
      stdin = false,
    }
  end
end

require("formatter").setup {
  logging = false,
  filetype = {
    javascript = { prettier },
    json = { prettier },
    typescript = { prettier },
    html = { prettier },
    css = { prettier },
    scss = { prettier },
    markdown = { prettier },
    python = { black },
    lua = {
      function()
        return {
          exe = "stylua",
          args = { "--indent-width", 2, "--indent-type", "Spaces" },
          stdin = false,
        }
      end,
    },
  },
}

-- Runs Formatter on save
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.json,*.ts,*.css,*.scss,*.md,*.html,*.lua,*.py FormatWrite
augroup END
]], true)

