local highpatterns = require('mini.hipatterns')

-- #TODO: This is a highlighted Todo
-- #FIXME: This is a highlighted FixMe warning
-- #HACK: This is a highlighted Hack warning
-- #NOTE: This is a highlighted Note
-- #d946ef
highpatterns.setup({
    highlighters = {
      fixme = { pattern = 'FIXME', group = 'MiniHipatternsFixme' },
      hack  = { pattern = 'HACK',  group = 'MiniHipatternsHack'  },
      todo  = { pattern = 'TODO',  group = 'MiniHipatternsTodo'  },
      note  = { pattern = 'NOTE',  group = 'MiniHipatternsNote'  },
      hex_color = highpatterns.gen_highlighter.hex_color(),
    },
  })
