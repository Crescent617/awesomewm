--[[

     Multicolor Awesome WM theme 2.0
     github.com/lcpz

--]]

local gears = require "gears"
local lain = require "lain"
local awful = require "awful"
local wibox = require "wibox"
local dpi = require("beautiful.xresources").apply_dpi

local os = os

local theme = {}
theme.confdir = os.getenv "HOME" .. "/.config/awesome/themes/powerarrow"
theme.wallpaper = os.getenv "HOME" .. "/.config/awesome/themes/custom/wall.png"
theme.font = "Ubuntu Mono 12"

local dracula_background = "#282a36"
local dracula_current_line = "#44475a"
local dracula_selection = "#44475a"
local dracula_foreground = "#f8f8f2"
local dracula_comment = "#6272a4"
local dracula_cyan = "#8be9fd"
local dracula_green = "#50fa7b"
local dracula_orange = "#ffb86c"
local dracula_pink = "#ff79c6"
local dracula_purple = "#bd93f9"
local dracula_red = "#ff5555"
local dracula_yellow = "#f1fa8c"

-- local focus_border = "#59e269"
local focus_border = dracula_cyan
local bg_normal = dracula_background .. "f0"
local fg_normal = "#ffffff"

-- Menu
theme.menu_bg_normal = bg_normal
theme.menu_bg_focus = bg_normal
theme.menu_border_width = 0
theme.menu_width = dpi(130)
theme.menu_fg_normal = fg_normal
theme.menu_fg_focus = focus_border
theme.menu_bg_normal = bg_normal
theme.menu_bg_focus = bg_normal

-- Background
theme.bg_normal = bg_normal
theme.bg_dark = "#000000"
theme.bg_focus = bg_normal
theme.bg_urgent = dracula_red
theme.bg_minimize = bg_normal

-- Foreground
theme.fg_normal = "#ffffff"
theme.fg_focus = fg_normal
theme.fg_urgent = "#ffffff"
theme.fg_minimize = fg_normal

-- Window Gap Distance
theme.useless_gap = dpi(12)

-- Show Gaps if Only One Client is Visible
theme.gap_single_client = true

-- Window Borders
theme.border_width = dpi(2)
theme.border_normal = bg_normal
theme.border_focus = focus_border
theme.border_marked = "#d166ff"

-- Taglist
theme.taglist_bg_empty = theme.bg_normal
theme.taglist_bg_occupied = "#6666669a"
theme.taglist_bg_urgent = dracula_red .. "f0"
theme.taglist_bg_focus = "#ffffffe0"
theme.taglist_fg_focus = "#000000"

-- Tasklist
theme.tasklist_font = theme.font

theme.tasklist_fg_normal = "#ffffff"
theme.tasklist_bg_normal = "#505070"
-- theme.tasklist_fg_focus = "#000000"
-- theme.tasklist_bg_focus = "#ffffffdd"
theme.tasklist_fg_focus = "#ffffff"
theme.tasklist_bg_focus = "#505070"
theme.tasklist_fg_urgent = theme.fg_urgent
theme.tasklist_bg_urgent = theme.bg_urgent

-- Panel Sizing
theme.left_panel_width = dpi(55)
theme.top_panel_height = dpi(30)

-- Notification Sizing
theme.notification_width = dpi(500)
theme.notification_height = dpi(125)
theme.notification_icon_size = dpi(125)

-- round corners
theme.notification_shape = function(cr, width, height)
  gears.shape.rounded_rect(cr, width, height, dpi(10))
end

-- opacity
theme.notification_opacity = 0.95
theme.notification_border_color = fg_normal

-- System Tray
theme.bg_systray = theme.bg_normal
theme.systray_icon_spacing = dpi(5)

-- theme.tasklist_plain_task_name = false
-- theme.tasklist_disable_icon = false
-- theme.tasklist_disable_task_name = true

theme.layout_tile = theme.confdir .. "/icons/tile.png"
theme.layout_tilegaps = theme.confdir .. "/icons/tilegaps.png"
theme.layout_tileleft = theme.confdir .. "/icons/tileleft.png"
theme.layout_tilebottom = theme.confdir .. "/icons/tilebottom.png"
theme.layout_tiletop = theme.confdir .. "/icons/tiletop.png"
theme.layout_fairv = theme.confdir .. "/icons/fairv.png"
theme.layout_fairh = theme.confdir .. "/icons/fairh.png"
theme.layout_spiral = theme.confdir .. "/icons/spiral.png"
theme.layout_dwindle = theme.confdir .. "/icons/dwindle.png"
theme.layout_max = theme.confdir .. "/icons/max.png"
theme.layout_fullscreen = theme.confdir .. "/icons/fullscreen.png"
theme.layout_magnifier = theme.confdir .. "/icons/magnifier.png"
theme.layout_floating = theme.confdir .. "/icons/floating.png"
theme.titlebar_close_button_normal = theme.confdir .. "/icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus = theme.confdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal = theme.confdir .. "/icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = theme.confdir .. "/icons/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive = theme.confdir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = theme.confdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.confdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = theme.confdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive = theme.confdir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = theme.confdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.confdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = theme.confdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive = theme.confdir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = theme.confdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.confdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = theme.confdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = theme.confdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.confdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = theme.confdir .. "/icons/titlebar/maximized_focus_active.png"

local markup = lain.util.markup

-- Textclock
os.setlocale(os.getenv "LANG") -- to localize the clock
local mytextclock = wibox.widget.textclock(markup(fg_normal, " %Y-%m-%d ") .. markup(fg_normal, "%H:%M "))
mytextclock.font = theme.font

-- Calendar
theme.cal = lain.widget.cal {
  attach_to = { mytextclock },
  notification_preset = {
    font = theme.font,
    fg = theme.fg_normal,
    bg = theme.bg_normal,
  },
}

-- CPU
local cpu = lain.widget.cpu {
  settings = function()
    widget:set_markup(markup.fontfg(theme.font, "#ffffff", "󰍛 " .. cpu_now.usage .. "% "))
  end,
}

local volume_widget = require "awesome-wm-widgets.volume-widget.volume"

-- MEM
local memory = lain.widget.mem {
  settings = function()
    widget:set_markup(markup.fontfg(theme.font, "#ffffff", " " .. mem_now.perc .. "% "))
  end,
}

local temp = lain.widget.temp {
  settings = function()
    widget:set_markup(markup.font(theme.font, coretemp_now .. "°C "))
  end,
}

local smart_netspeed = function(byte_num)
  local byte_num = tonumber(byte_num)
  if byte_num < 1024 then
    return string.format("%.1fB", byte_num)
  elseif byte_num < 1024 * 1024 then
    return string.format("%.1fKB", byte_num / 1024)
  elseif byte_num < 1024 * 1024 * 1024 then
    return string.format("%.1fMB", byte_num / 1024 / 1024)
  else
    return string.format("%.1fGB", byte_num / 1024 / 1024 / 1024)
  end
end

local net = lain.widget.net {
  settings = function()
    widget:set_markup(
      markup.font(
        theme.font,
        markup(dracula_cyan, "  " .. smart_netspeed(net_now.received))
          .. " "
          .. markup(dracula_green, "  " .. smart_netspeed(net_now.sent))
          .. " "
      )
    )
  end,
}

-- Utils
local function lr_margin_box(widget, margin)
  if not margin then
    margin = 10
  end
  return wibox.widget {
    widget,
    left = dpi(margin),
    right = dpi(margin),
    widget = wibox.container.margin,
  }
end

local function margin_box(widget, margin)
  if not margin then
    margin = 2
  end
  return wibox.widget {
    widget,
    margins = dpi(margin),
    widget = wibox.container.margin,
  }
end

function theme.at_screen_connect(s)
  -- Quake application
  s.quake = lain.util.quake { app = awful.util.terminal }

  -- If wallpaper is a function, call it with the screen
  local wallpaper = theme.wallpaper
  if type(wallpaper) == "function" then
    wallpaper = wallpaper(s)
  end
  gears.wallpaper.maximized(wallpaper, s, true)

  -- Tags
  awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

  -- Create a promptbox for each screen
  s.mypromptbox = awful.widget.prompt()
  -- Create an imagebox widget which will contains an icon indicating which layout we're using.
  -- We need one layoutbox per screen.
  s.mylayoutbox = awful.widget.layoutbox(s)

  -- Create a taglist widget
  local function list_update(w, buttons, label, data, objects)
    -- call default widget drawing function
    local common = require "awful.widget.common"
    common.list_update(w, buttons, label, data, objects)
    -- set widget size
    w:set_max_widget_size(dpi(150))
  end

  s.mytaglist = awful.widget.taglist {
    screen = s,
    filter = awful.widget.taglist.filter.all,
    buttons = awful.util.taglist_buttons,
    style = {
      shape = gears.shape.rounded_bar,
    },
    layout = {
      layout = wibox.layout.flex.horizontal,
    },
  }

  -- Create a tasklist widget
  s.mytasklist = awful.widget.tasklist {
    screen = s,
    filter = awful.widget.tasklist.filter.currenttags,
    buttons = awful.util.tasklist_buttons,
    update_function = list_update,
    style = {
      shape = gears.shape.rounded_rect,
    },
    layout = {
      spacing = 10,
      layout = wibox.layout.flex.horizontal,
    },
  }

  -- Create the wibox
  s.mywibox =
    awful.wibar { position = "bottom", screen = s, height = dpi(22), bg = theme.bg_normal, fg = theme.fg_normal }

  -- Add widgets to the wibox
  s.mywibox:setup {
    layout = wibox.layout.align.horizontal,
    { -- Left widgets
      layout = wibox.layout.fixed.horizontal,
      s.mylayoutbox,
      lr_margin_box(s.mytaglist),
      lr_margin_box(s.mypromptbox, 5),
    },
    lr_margin_box(s.mytasklist, 5),
    { -- Right widgets
      layout = wibox.layout.fixed.horizontal,
      net.widget,
      memory.widget,
      cpu.widget,
      temp.widget,
      -- fs_widget(),
      lr_margin_box(volume_widget()),
      margin_box(wibox.widget.systray(), 2),
      mytextclock,
      require "awesome-wm-widgets.logout-menu-widget.logout-menu" {
        onlock = function()
          awful.spawn.with_shell "slock"
        end,
        onsuspend = function()
          awful.spawn.with_shell "systemctl suspend"
        end,
      },
    },
  }
end

return theme
