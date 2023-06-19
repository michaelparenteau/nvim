-- https://github.com/maxmx03/FluoroMachine.nvim
local fm = require('fluoromachine')

fm.setup {
  glow = true,
  brightness = 1,
  theme = 'fluoromachine',
  colors = function(_, d)
    return {
      currentline = '#0E0020',
      selection = '#0E0020',
      bg = '#200939',
      -- alt_bg = d('#140129', 20),
      -- cyan = '#49eaff',
      -- red = '#ff1e34',
      -- yellow = '#ffe756',
      -- orange = '#f38e21',
      -- pink = '#ffadff',
      -- purple = '#9544f7',
    }
  end,
}
