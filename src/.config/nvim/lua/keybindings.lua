require "helpers/globals"
require "helpers/keyboard"

G.mapleader = ' '                                                                 -- Use Space, like key for alternative hotkeys
G.maplocalleader = ' ' -- Use Space for localleader too

-- LSP 
Nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                                      -- Hover object
Nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                                -- Code actions
Nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                                     -- Rename an object
Nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')                                -- Go to declaration

-- Trouble 
Nm('<leader>x', '<cmd>TroubleToggle workspace_diagnostics<CR>')                                         -- Show all problems in project (with help of LSP)
Nm('gr', '<cmd>Trouble lsp_references<CR>')                                       -- Show use of object in project

