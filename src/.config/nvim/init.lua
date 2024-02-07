--[[
  File: init.lua
  Description: Entry point file for neovim
]]

-- Bootsraping plugin manager
require "lazy-bootstrap"

-- Settings
require "settings"
require "keybindings"

-- Plugin management
local lazy = require("lazy")
lazy.setup("plugins")
