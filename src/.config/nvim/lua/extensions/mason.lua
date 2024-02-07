--[[
  File: mason.lua
  Description: Mason plugin configuration (with lspconfig)
  See: https://github.com/williamboman/mason.nvim
]]

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "awk_ls",                          -- LSP for AWK
    "ansiblels",                       -- LSP for Ansible
    "arduino_language_server",         -- LSP for Arduino
    "astro",                           -- LSP for Astro
    "bashls",                          -- LSP for Bash
    "clangd",                          -- LSP for C & C++
    "csharp_ls",                       -- LSP for C#
    "cmake",                           -- LSP for cmake
    "cssls",                           -- LSP for CSS
    "cssmodules_ls",                   -- LSP for CSS Modules
    "custom_elements_ls",              -- LSP for HTML Custom Elements
    "dockerls",                        -- LSP for Dockerfiles
    "docker_compose_language_service", -- LSP for compose.yml files
    "esbonio",                         -- LSP for Sphinx docs
    "eslint",                          -- LSP for Eslint
    "elixirls",                        -- LSP for Elixir
    "emmet_language_server",           -- LSP for Emmet completions
    "gopls",                           -- LSP for Go
    "graphql",                         -- LSP for graphql files
    "html",                            -- LSP for HTML files
    "htmx",                            -- LSP for HTMX
    "jsonls",                          -- LSP for JSON
    "julials",                         -- LSP for Julia
    "jqls",                            -- LSP for jq
    "kotlin_language_server",          -- LSP for Kotlin
    "lemminx",                        -- LSP for XML
    "ltex",                            -- LSP for LaTeX
    "lua_ls",                          -- LSP for Lua language
    "prismals",                        -- LSP for Prisma files
    "prosemd_lsp",                     -- LSP for Markdown files
    "pyright",                         -- LSP for Python
    "r_language_server",               -- LSP for R lang
    "sqlls",                           -- LSP for SQL
    "svelte",                          -- LSP for Svelte files
    "stimulus_ls",                     -- LSP for Stimulus.js
    "taplo",                           -- LSP for TOML files
    "terraformls",                     -- LSP for Terraform
    "tsserver",                        -- LSP for Typescript and Javascript
    "volar",                           -- LSP for Vue
    "yamlls",                          -- LSP for YAML
  },
  ui = {
    icons = {
      package_installed = "✔",
      package_pending = "⧖",
      package_uninstalled = "✗"
    }
  }
});

local configs = {
  lua_ls = {
    on_init = function(client)
    local path = client.workspace_folders[1].name
    if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
              -- "${3rd}/luv/library"
              -- "${3rd}/busted/library",
            }
            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
            -- library = vim.api.nvim_get_runtime_file("", true)
          }
        }
      })

      client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    end
    return true
  end
  },
}

mason_lspconfig.setup_handlers({
  function (server_name)
    lspconfig[server_name].setup(configs[server_name] or {})
  end,
})
