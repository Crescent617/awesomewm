-- XXX: this file has not been done

local function pct2color(pct, pallet)
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

-- Hide widgets if the percentage is less than this value
local pct_hide_threshold = 5

local sysload = lain.widget.sysload {
  timeout = 5,
  settings = function()
    local cpunum = 12
    local pct = tonumber(load_1 / cpunum * 100)
    local fg = pct2color(pct)
    if pct < pct_hide_threshold then
      widget:set_markup ""
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
      widget:set_markup ""
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
      widget:set_markup ""
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
      widget:set_markup ""
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
      m = markup(recv_fg, "  " .. smart_netspeed(net_now.received))
        .. " "
        .. markup(sent_fg, "  " .. smart_netspeed(net_now.sent))
        .. " "
    end
    widget:set_markup(markup.font(theme.font, m))
  end,
}
