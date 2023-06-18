local starter = require('mini.starter')
starter.setup({
  evaluate_single = true,
  items = {
    -- starter.sections.builtin_actions(),
    starter.sections.recent_files(10, false),
    starter.sections.recent_files(10, true),
    -- Use this if you set up 'mini.sessions'
    -- starter.sections.sessions(5, true)
  },
  content_hooks = {
    -- starter.gen_hook.adding_bullet(""),
    starter.gen_hook.aligning("center", "center"),
    starter.gen_hook.indexing('all', { 'Builtin actions' }),
    starter.gen_hook.padding(0, 0),
  },
  footer = table.concat({
    [[ The bus came by and I got on, that's when it all began...]]
  }, "\n"),
  header = table.concat({
    [[                                                                                               ]],
    [[          _________________________                                                            ]],
    [[         |_Do_Good_|_Pay Attention_|                                                           ]],
    [[       `/"""""""""/|""||""||""||""| \.                                                         ]],
    [[       /         / |/o||,,||,,||,,|  |                                                         ]],
    [[      /----------====================|               *  p   a y                                ]],
    [[      | \  /V\  /    _.    |         |                                                         ]],
    [[      |()\ \W/ /()   _     |      _  |        at           i     o                             ]],
    [[      |   \   /     / \    |     / \ | )         ten   +               n                       ]],
    [[      =C========C==_| ) |--------| ) /===\  <3                                                 ]],
    [[        \_\_/     \_\_/  \_\_/ \_\_/                                                           ]],
    [[╱╱╱╱╱╱╱╱╱╱Get//╱╱╱on╱╱╱╱╱the╱╱╱╱//BUS╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱/╱/╱/////╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱mp]],
  }, "\n"),
  query_updaters = [[abcdefghilmoqrstuvwxyz0123456789_-,.ABCDEFGHIJKLMOQRSTUVWXYZ]],
})
