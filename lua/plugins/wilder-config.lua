local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.python_file_finder_pipeline({
      -- to use ripgrep : {'rg', '--files'}
      -- to use fd      : {'fd', '-tf'}
      -- defaults {'find', '.', '-type', 'f', '-printf', '%P\n'}
      file_command = {'rg', '--files'}, 
      -- to use fd      : {'fd', '-td'}
      dir_command = {'rg', '--files'},
      -- use {'cpsm_filter'} for performance, requires cpsm vim plugin
      -- found at https://github.com/nixprime/cpsm
      filters = {'fuzzy_filter', 'difflib_sorter'},
    }),
    wilder.substitute_pipeline({
      pipeline = wilder.python_search_pipeline({
        skip_cmdtype_check = 1,
        pattern = wilder.python_fuzzy_pattern({
          start_at_boundary = 0,
        }),
      }),
    }),
    wilder.cmdline_pipeline({
      language = 'python',
      fuzzy = 1,
    }),
    {
      wilder.check(function(ctx, x) return x == '' end),
      wilder.history(),
    },
    wilder.python_search_pipeline({
      pattern = wilder.python_fuzzy_pattern({
        start_at_boundary = 0,
      }),
    })
  ),
})

-- local highlighters = {
--   wilder.pcre2_highlighter(),
--   wilder.lua_fzy_highlighter(),
-- }

local gradient = {
  '#f4468f', '#fd4a85', '#ff507a', '#ff566f', '#ff5e63',
  '#ff6658', '#ff704e', '#ff7a45', '#ff843d', '#ff9036',
  '#f89b31', '#efa72f', '#e6b32e', '#dcbe30', '#d2c934',
  '#c8d43a', '#bfde43', '#b6e84e', '#aff05b'
}

for i, fg in ipairs(gradient) do
  gradient[i] = wilder.make_hl('WilderGradient' .. i, 'Pmenu', {{a = 1}, {a = 1}, {foreground = fg}})
end

local popupmenu_renderer = wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    border = 'rounded',
    empty_message = wilder.popupmenu_empty_message_with_spinner(),
    highlights = {
      gradient = gradient,
    },
    highlighter = wilder.highlighter_with_gradient({
      wilder.basic_highlighter()
      -- wilder.lua_fzy_highlighter(),
    }),
    reverse = 1,
    left = {
      ' ',
      wilder.popupmenu_devicons(),
      wilder.popupmenu_buffer_flags({
        flags = ' a + ',
        icons = {['+'] = '', a = '', h = ''},
      }),
    },
    right = {
      ' ',
      wilder.popupmenu_scrollbar(),
    },
  })
)

-- local gradient = {
--   '#f4468f', '#fd4a85', '#ff507a', '#ff566f', '#ff5e63',
--   '#ff6658', '#ff704e', '#ff7a45', '#ff843d', '#ff9036',
--   '#f89b31', '#efa72f', '#e6b32e', '#dcbe30', '#d2c934',
--   '#c8d43a', '#bfde43', '#b6e84e', '#aff05b'
-- }
--
-- for i, fg in ipairs(gradient) do
--   gradient[i] = wilder.make_hl('WilderGradient' .. i, 'Pmenu', {{a = 1}, {a = 1}, {foreground = fg}})
-- end

local wildmenu_renderer = wilder.wildmenu_renderer({
  highlights = {
    gradient = gradient
  },
  highlighter = wilder.highlighter_with_gradient({
    wilder.basic_highlighter()
    -- wilder.lua_fzy_highlighter(),
  }),
  separator = ' · ',
  left = {' ', wilder.wildmenu_spinner(), ' '},
  right = {' ', wilder.wildmenu_index()},
})

-- wilder.set_option('renderer', wilder.popupmenu_renderer({
--   highlights = {
--     gradient = gradient
--   },
--   highlighter = wilder.highlighter_with_gradient({
--     wilder.lua_fzy_highlighter(),
--   }),
--   separator = ' · ',
--   left = {' ', wilder.wildmenu_spinner(), ' '},
--   right = {' ', wilder.wildmenu_index()},
-- }))

wilder.set_option('renderer', wilder.renderer_mux({
  [':'] = popupmenu_renderer,
  ['/'] = wildmenu_renderer,
  substitute = wildmenu_renderer,
}))


-- wilder.set_option('renderer', wilder.popupmenu_renderer({
--   highlights = {
--   gradient = gradient, -- must be set
--     -- selected_gradient key can be set to apply gradient highlighting for the selected candidate.
--   },
--   highlighter = wilder.highlighter_with_gradient({
--     wilder.basic_highlighter(), -- or wilder.lua_fzy_highlighter(),
--   }),
-- }))

