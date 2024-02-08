--[[
  File: settings.lua
  Description: Base settings for neovim
  Info: Use <zo> and <zc> to open and close foldings
]]

require "helpers/globals"

-- Set associating between turned on plugins and filetype
Cmd([[filetype plugin on]])

-- Disable comments on pressing Enter
Cmd([[autocmd FileType * setlocal formatoptions-=cro]])

-- Tabs
Opt.expandtab = true                -- Use spaces by default
Opt.shiftwidth = 2                  -- Set amount of space characters, when we press "<" or ">"
Opt.tabstop = 2                     -- 1 tab equal 2 spaces
Opt.smartindent = true              -- Turn on smart indentation. See in the docs for more info

-- Clipboard 
Opt.clipboard = 'unnamedplus' -- Use system clipboard
Opt.fixeol = false -- Turn off appending new line in the end of a file

-- Folding 
Opt.foldmethod = "expr"
Opt.foldexpr = "nvim_treesitter#foldexpr()"
Opt.foldlevel = 1
Opt.foldnestmax = 10

-- Search 
Opt.ignorecase = true               -- Ignore case if all characters in lower case
Opt.joinspaces = false              -- Join multiple spaces in search
Opt.smartcase = true                -- When there is a one capital letter search for exact match
Opt.showmatch = true                -- Highlight search instances

-- Window 
Opt.splitbelow = true               -- Put new windows below current
Opt.splitright = true               -- Put new vertical splits to right

-- Wild Menu 
Opt.wildmenu = true
Opt.wildmode = "longest:full,full"

-- Default Plugins 
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    G["loaded_" .. plugin] = 1
end

