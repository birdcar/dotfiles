local wk = require('which-key')
local MiniFiles = require('mini.files')

MiniFiles.setup()

wk.register({
  f = {
    c = { "<cmd>lua MiniFiles.open()<cr>", "Create new File(s)" }
  }
})
