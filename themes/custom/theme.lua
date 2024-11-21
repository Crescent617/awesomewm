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
-- local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme = {}
theme.confdir = os.getenv "HOME" .. "/.config/awesome/themes/custom"
theme.wallpaper = os.getenv "MY_WALLPAPER" or theme.confdir .. "/wall.jpg"
theme.font = "Ubuntu Mono 12"

-- local focus_border = "#59e269"
local focus_border = "#0090ed"
local focus_bg = "#0090dd"
local bg_normal = "#222222AA"
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
theme.bg_urgent = "#ed8274"
theme.bg_minimize = "#444444f0"

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
theme.taglist_bg_occupied = "#ffffff1a"
theme.taglist_bg_urgent = "#e91e6399"
theme.taglist_bg_focus = focus_bg

-- Tasklist
theme.tasklist_font = theme.font

theme.tasklist_fg_normal = "#000000"
theme.tasklist_bg_normal = "#ffffffaa"
theme.tasklist_fg_focus = "#000000"
theme.tasklist_bg_focus = "#ffffffdd"
theme.tasklist_fg_urgent = theme.fg_urgent
theme.tasklist_bg_urgent = theme.bg_urgent

-- Panel Sizing
theme.left_panel_width = dpi(55)
theme.top_panel_height = dpi(26)

-- Notification Sizing
theme.notification_width = dpi(500)
theme.notification_height = dpi(125)
theme.notification_icon_size = dpi(125)

-- round corners
theme.notification_shape = function(cr, width, height)
  gears.shape.rounded_rect(cr, width, height, dpi(10))
end
-- opacity
theme.notification_opacity = 0.9
theme.notification_border_color = theme.border_marked

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
      margin_box(wibox.widget.systray(), 2),
      lr_margin_box(volume_widget()),
      memory.widget,
      cpu.widget,
      -- fs_widget(),
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
