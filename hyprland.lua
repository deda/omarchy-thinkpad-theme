local active_border_color = "rgb(8b0000)"
local active_tab_color = "rgb(da1e28)"

hl.config({
  general = {
    gaps_in = 3,
    gaps_out = 6,
    border_size = 2,

    col = {
      active_border = active_border_color,
    },
  },

  decoration = {
    rounding = 9,

    shadow = {
      enabled = true,
      range = 32,
      render_power = 2,
      color = "rgba(00000050)",
    },
  },

  group = {
    col = {
      border_active = active_border_color,
    },

    groupbar = {
      enabled = true,
      scrolling = true,
      render_titles = false,
      font_size = 0,
      height = 0,

      rounding = 3,
      round_only_edges = false,
      rounding_power = 2,

      gradients = false,

      gaps_in = 6,
      gaps_out = 6,
      keep_upper_gap = false,

      indicator_height = 5,
      indicator_gap = 0,
      stacked = false,

      col = {
        active = active_tab_color,
      },
    },
  },
})

hl.animation({ leaf = "workspaces", enabled = true, speed = 3.5, bezier = "easeOutQuint" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3.5, bezier = "easeOutQuint", style = "slidevert" })
