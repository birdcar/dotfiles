--[[
  File: treesitter.lua
  Description: Configuration of tree-sitter
  See: https://github.com/tree-sitter/tree-sitter
]]
require('nvim-treesitter.configs').setup({

  -- Needed parsers
  ensure_installed = {
    "astro",
    "bash",
    "c",
    "c_sharp",
    "cmake",
    "comment",
    "cpp",
    "css",
    "csv",
    "dart",
    "diff",
    "dockerfile",
    "elixir",
    "fennel",
    "fish",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "gpg",
    "graphql",
    "html",
    "htmldjango",
    "http",
    "java",
    "javascript",
    "jq",
    "jsdoc",
    "json",
    "jsonc",
    "julia",
    "kotlin",
    "latex",
    "lua",
    "luadoc",
    "make",
    "markdown",
    "markdown_inline",
    "mermaid",
    "nix",
    "passwd",
    "prisma",
    "pymanifest",
    "python",
    "r",
    "rbs",
    "regex",
    "requirements",
    "rst",
    "ruby",
    "rust",
    "scss",
    "sql",
    "ssh_config",
    "starlark",
    "svelte",
    "swift",
    "terraform",
    "todotxt",
    "toml",
    "tsv",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "vue",
    "xml",
    "yaml",
    "zig",
  },

  -- Install all parsers synchronously
  sync_install = false,

  -- Highlighting
  highlight = {
    -- Enabling highlight for all files
    enable = true,
    disable = {},
  },

  indent = {
    -- Disabling indentation for all files
    enable = false,
    disable = {},
  }
})
