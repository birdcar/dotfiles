--[[
  File: github.lua
  Description: Github nvim theme configuration
  See: https://github.com/projekt0n/github-nvim-theme
]]
local ghTheme = require("github-theme")

ghTheme.setup({
  options = {
    terminal_colors = true,
    dim_interactive = true,
    module_default = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    },
    palettes = {},
    specs = {},
    groups = {},
  }
})

Cmd("colorscheme github_dark_default")
