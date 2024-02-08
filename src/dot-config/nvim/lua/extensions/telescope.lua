local t = require("telescope")
local wk = require("which-key")

t.setup({
  defaults = {
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
  },
  extensions = {
  }
})

-- Register Which-key commands
wk.register({
  f = {
    name = "File",
    f = { "<cmd>Telescope find_files<cr>", "Open a file" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false },
    s = {
      name = "Search",
      t = { "<cmd>Telescope tags<cr>", "Search tags in file" }
    },
  },
  w = {
    name = "Workspace",
    t = { "<cmd>Telescope buffers<cr>", "Switch 'Tabs' (buffers) "},
    s = {
      name = "Search",
      ["*"] = { "<cmd>Telescope live_grep<cr>", "Live grep directory" },
    }
  }
}, {
  prefix = "<leader>"
})
