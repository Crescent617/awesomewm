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
theme.wallpaper = os.getenv "HOME" .. "/.config/awesome/themes/custom/wall.jpg"
theme.font = "CaskaydiaCove NF 12"

local dracula_background = "#282a36"
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

local bg_dimmed = "#45494c" -- mac os titlebar background color
local fg_dimmed = "#d7dbde" -- mac os titlebar text color

local focus_border = dracula_comment
local bg_normal = dracula_background
local fg_normal = dracula_foreground

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
theme.bg_urgent = dracula_green
theme.bg_minimize = dracula_selection

-- Foreground
theme.fg_normal = "#ffffff"
theme.fg_focus = fg_normal
theme.fg_urgent = "#000000"
theme.fg_minimize = fg_dimmed

-- Titlebars
theme.titlebar_bg = bg_normal
theme.titlebar_fg = fg_dimmed

-- Hotkeys
theme.hotkeys_modifiers_fg = dracula_purple
-- theme.hotkeys_bg = bg_normal .. "aa"
-- theme.hotkeys_font = theme.font

-- Window Gap Distance
theme.useless_gap = dpi(12)

-- Show Gaps if Only One Client is Visible
theme.gap_single_client = true

-- Window Borders
theme.border_width = dpi(2)
theme.border_normal = bg_normal
theme.border_focus = focus_border
theme.border_marked = dracula_purple

-- Taglist
theme.taglist_spacing = dpi(5)
theme.taglist_bg_empty = theme.bg_normal
theme.taglist_bg_occupied = "#6666669a"
theme.taglist_bg_urgent = theme.bg_urgent
theme.taglist_bg_focus = "#ffffffe0"
theme.taglist_fg_focus = "#000000"
theme.taglist_fg = fg_dimmed

-- Tasklist
theme.tasklist_font = theme.font

theme.tasklist_fg_normal = fg_dimmed
theme.tasklist_bg_normal = "#505060"
-- theme.tasklist_fg_focus = "#000000"
-- theme.tasklist_bg_focus = "#ffffffdd"
theme.tasklist_fg_focus = fg_normal
theme.tasklist_bg_focus = "#505060"
theme.tasklist_fg_urgent = fg_dimmed
theme.tasklist_bg_urgent = "#505060"
theme.tasklist_shape_border_color_focus = fg_dimmed .. "AA"
theme.tasklist_shape_border_width_focus = 2
theme.tasklist_shape_border_color_urgent = theme.bg_urgent
theme.tasklist_shape_border_width_urgent = 2

-- Panel Sizing
theme.left_panel_width = dpi(55)
theme.top_panel_height = dpi(30)

-- Notification Sizing
theme.notification_width = dpi(500)
theme.notification_height = dpi(100)
theme.notification_icon_size = dpi(100)

-- round corners
theme.notification_shape = function(cr, width, height)
  gears.shape.rounded_rect(cr, width, height, dpi(10))
end

-- opacity
-- theme.notification_opacity = 0.95
theme.notification_border_color = dracula_selection

-- System Tray
theme.bg_systray = theme.bg_normal
theme.systray_icon_spacing = dpi(5)

-- Tasklist
-- theme.tasklist_plain_task_name = false
-- theme.tasklist_disable_icon = false
-- theme.tasklist_disable_task_name = true
-- theme.tasklist_align = "center"
-- theme.tasklist_font_focus = theme.font .. " bold"
theme.tasklist_font_minimized = theme.font .. " italic"

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
-- theme.cal = lain.widget.cal {
--   attach_to = { mytextclock },
--   notification_preset = {
--     font = theme.font,
--     fg = theme.fg_normal,
--     bg = theme.bg_normal,
--   },
-- }

-- Hide widgets if the percentage is less than this value
local pct_hide_threshold = 5

local function pct2color(pct, pallet)
  if not pallet then
    pallet = {
      dracula_comment,
      fg_dimmed,
      dracula_yellow,
      dracula_orange,
      -- dracula_pink,
      dracula_red,
    }
  end
  pct = tonumber(pct)
  if pct < 10 then
    return pallet[1]
  elseif pct < 25 then
    return pallet[2]
  elseif pct < 50 then
    return pallet[3]
  elseif pct < 75 then
    return pallet[4]
  else
    return pallet[5]
  end
end

local sysload = lain.widget.sysload {
  timeout = 5,
  settings = function()
    local cpunum = 12
    local pct = tonumber(load_1 / cpunum * 100)
    local fg = pct2color(pct)
    if pct < pct_hide_threshold then
      widget:set_markup("")
      return
    end
    widget:set_markup(markup.fontfg(theme.font, fg, " " .. load_1 .. " "))
  end,
}

local cpu = lain.widget.cpu {
  timeout = 5,
  settings = function()
    local fg = pct2color(cpu_now.usage)
    local pct = tonumber(cpu_now.usage)
    if pct < pct_hide_threshold then
      widget:set_markup("")
      return
    end
    widget:set_markup(markup.fontfg(theme.font, fg, "󰍛 " .. cpu_now.usage .. "% "))
  end,
}

local memory = lain.widget.mem {
  timeout = 5,
  settings = function()
    local fg = pct2color(mem_now.perc)
    local pct = tonumber(mem_now.perc)
    if pct < pct_hide_threshold then
      widget:set_markup("")
      return
    end
    widget:set_markup(markup.fontfg(theme.font, fg, " " .. pct .. "% "))
  end,
}

local temp = lain.widget.temp {
  --   ❯ cat /sys/class/thermal/thermal_zone2/type
  -- x86_pkg_temp
  tempfile = "/sys/devices/virtual/thermal/thermal_zone2/temp",
  settings = function()
    local pct = tonumber(coretemp_now - 30) / 50 * 100
    local fg = pct2color(pct)
    if pct < pct_hide_threshold then
      widget:set_markup("")
      return
    end
    widget:set_markup(markup.fontfg(theme.font, fg, "󱃃 " .. coretemp_now .. "°C "))
  end,
}

local function smart_netspeed(kbs)
  local byte_num = tonumber(kbs) * 1024
  -- if byte_num < 1024 then
  --   return string.format("%.1fB", byte_num)
  if byte_num < 1024 * 1024 then
    return string.format("%.1fKB", byte_num / 1024)
  elseif byte_num < 1024 * 1024 * 1024 then
    return string.format("%.1fMB", byte_num / 1024 / 1024)
  else
    return string.format("%.1fGB", byte_num / 1024 / 1024 / 1024)
  end
end

local net = lain.widget.net {
  settings = function()
    local max_speed = 5 * 1024 -- 5MB/s
    local pallet = {
      dracula_comment,
      fg_dimmed,
      dracula_purple,
      dracula_cyan,
      dracula_green,
    }
    local recv_pct = net_now.received / max_speed * 100
    local sent_pct = net_now.sent / max_speed * 100
    local recv_fg = pct2color(recv_pct, pallet)
    local sent_fg = pct2color(sent_pct, pallet)

    local m = ""
    if recv_pct > pct_hide_threshold or sent_pct > pct_hide_threshold then
      m = markup(recv_fg, "  " .. smart_netspeed(net_now.received)) ..
          " " .. markup(sent_fg, "  " .. smart_netspeed(net_now.sent)) .. " "
    end
    widget:set_markup(markup.font(theme.font, m))
  end,
}

-- Utils
local function lr_margin_box(widget, margin)
  if not margin then
    margin = 5
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

local volume_widget = require "awesome-wm-widgets.volume-widget.volume"
-- local pacman_widget = require 'awesome-wm-widgets.pacman-widget.pacman'

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
    w:set_max_widget_size(dpi(170))
  end

  s.mytaglist = awful.widget.taglist {
    screen = s,
    filter = awful.widget.taglist.filter.all,
    buttons = awful.util.taglist_buttons,
    style = {
      -- shape = gears.shape.rounded_bar,
      shape = gears.shape.rounded_rect,
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
  s.mywibox = awful.wibar { position = "top", screen = s, height = dpi(26), bg = theme.bg_normal, fg = theme.fg_normal }

  -- Add widgets to the wibox
  s.mywibox:setup {
    layout = wibox.layout.align.horizontal,
    { -- Left widgets
      layout = wibox.layout.fixed.horizontal,
      s.mylayoutbox,
      lr_margin_box(s.mytaglist, 5),
      lr_margin_box(s.mypromptbox, 5),
    },
    s.mytasklist, -- Middle widget
    {             -- Right widgets
      layout = wibox.layout.fixed.horizontal,
      net.widget,
      sysload.widget,
      cpu.widget,
      memory.widget,
      temp.widget,
      lr_margin_box(volume_widget(), 3),
      wibox.widget.systray(),
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
