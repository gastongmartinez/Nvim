local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  --  local opts = { noremap = true, silent = true }

  local wk = require("which-key")
  local lspmappings = {
    j = {
      name = "Jump to...",
      t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type definition" },
      D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
      d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
    },
    h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover information" },
    s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature help" },
    c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Select code action" },
    r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename all references to the symbol" },
    D = {
      name = "Diagnostics",
      l = { "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", "Show line diagnostics" },
      n = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Go to next" },
      p = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", "Go to previous" },
      q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "Set location list" },
    },
    l = {
      name = "List",
      s = { "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", "Document symbols" },
      i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "All implementations of the symbol" },
      r = { "<cmd>lua vim.lsp.buf.references()<CR>", "All references of the symbol" },
    },
    W = {
      name = "Workspaces",
      a = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add workspace folder" },
      r = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove workspace folder" },
      l = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "List workspaca folders" },
    },
  }
  local lspopts = { prefix = "<leader>", buffer = bufnr }
  wk.register(lspmappings, lspopts)

  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
end

local langservers = {
  --'ansiblels',
  "bashls",
  --'clangd',
  --'cmake',
  "cssls",
  "emmet_ls",
  "eslint",
  --'gopls',
  "html",
  "jsonls",
  --'powershell_es',
  --'pyright',
  "pylsp",
  --'rust_analyzer',
  --'sqlls',
  "sumneko_lua",
  "tsserver",
  "yamlls",
}

local lsp_installer_servers = require("nvim-lsp-installer.servers")

for _, server in ipairs(langservers) do
  local ok, langsvr = lsp_installer_servers.get_server(server)
  if ok then
    if not langsvr:is_installed() then
      langsvr:install()
    end
  end
end

for _, server in ipairs(langservers) do
  if server == "sumneko_lua" then
    USER = vim.fn.expand("$USER")

    local sumneko_root_path = ""
    local sumneko_binary = ""
    local sumneko_main = ""
    local runtime_path = vim.split(package.path, ";")

    if vim.fn.has("win32") == 1 then
      local DR = vim.fn.expand("$XDG_DATA_HOME")
      sumneko_root_path = DR .. "\\nvim-data\\lsp_servers\\sumneko_lua\\extension\\server\\"
      sumneko_binary = DR
        .. "\\nvim-data\\lsp_servers\\sumneko_lua\\extension\\server\\bin\\Windows\\lua-language-server.exe"
      sumneko_main = "\\main.lua"
      table.insert(runtime_path, "lua\\?.lua")
      table.insert(runtime_path, "lua\\?\\init.lua")
    else
      sumneko_root_path = "/home/" .. USER .. "/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/"
      sumneko_binary = "/home/"
        .. USER
        .. "/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/lua-language-server"
      sumneko_main = "/main.lua"
      table.insert(runtime_path, "lua/?.lua")
      table.insert(runtime_path, "lua/?/init.lua")
    end

    require("lspconfig").sumneko_lua.setup({
      cmd = { sumneko_binary, "-E", sumneko_root_path .. sumneko_main },
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
            -- Setup your lua path
            path = runtime_path,
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    })
  else
    require("lspconfig")[server].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end
end
