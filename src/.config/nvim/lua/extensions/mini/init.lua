-- Extend and create `a`/`i` textobjects
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-ai.md
require('extensions.mini.ai')

-- Align text interactively
-- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-align.md
require('extensions.mini.align')

-- Animate common neovim actions (replaces Neovide/neoscroll)
require("mini.animate").setup()

-- Common configuration presets based on vim-sensible and community survey
require("mini.basics").setup({
  options = {
    extra_ui = true,
    win_borders = "single"
  }
})

-- Navigate insanely fast using bracket keys
require("mini.bracketed").setup()

-- Close buffers while maintaining window layout
require("mini.bufremove").setup()

-- Quickly comment and uncomment lines
require("extensions.mini.comment")

-- Replaces CPP for completions and provised vscode-like in-place docs
require("mini.completion").setup()

-- Automatic word highlighting
require("mini.cursorword").setup()

-- Random extras and tidbits
require("mini.extra").setup()

-- File explorer (requires nvim-web-devicons for best experience)
require("extensions.mini.files")
-- Sorter for telescope + fuzzy matching algo
require("mini.fuzzy").setup()

-- Configure custom highlighting for specific patterns like TODO
require("extensions.mini.hipatterns")

-- Highlight indendation in context
require("mini.indentscope").setup()

-- Keyboard ergonomics to extend movement operations
require("mini.jump").setup()

-- Jump within visible lines via iterative label filtering
require("mini.jump2d").setup()

-- Misc functions
require("mini.misc").setup()

-- Make moving text around easier, like vscode but with vim-keys
require("mini.move").setup()

-- Display notifications (might replace vim-notify
require("mini.notify").setup()

-- Text editing operations like sort, duplicate, multiply, etc.
require("mini.operators").setup()

-- Autopairing autocomplete
require("mini.pairs").setup()

-- Pickers for everything
-- Dependencies: ripgrep/nvim-web-devicons
require("mini.pick").setup()

-- Session manager for neovim
require("mini.sessions").setup()

-- Easily join and split arguments
require("mini.splitjoin").setup()

-- Minimalist start screen for neovim
require("extensions.mini.starter")

-- Minimal and fast statusline module with an opinionated look
-- Dependencies: Nerdfont, gitsigns, and nvim-web-devicons
require("mini.statusline").setup()

-- Fast and feature-rich surround actions
require("mini.surround").setup()

-- Minimal tabs for displaying Nvim buffers
require("extensions.mini.tabline")

-- Work with trailing whitespace
require("mini.trailspace").setup()

-- Track and use file system visit information
require("mini.visits").setup()
