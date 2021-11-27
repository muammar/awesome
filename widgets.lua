-- Standard awesome library
local awful = require("awful")
local vicious = require("vicious")

-- Widget and layout library
local wibox = require("wibox")

---wibox2
--
-- Memory
-- Initialize widget
memwidget = wibox.widget.textbox()
-- Register widget
vicious.register(memwidget, vicious.widgets.mem, 'RAM: <span color="#CC9933">$1%</span> ($2MB/$3MB) ', 11)

-- Initialize widget
memwidget2 = wibox.widget.progressbar()
-- Progressbar properties
memwidget2:set_width(50)
memwidget2:set_vertical(true)
memwidget2:set_background_color("#494B4F")
memwidget2:set_border_color(nil)
memwidget2:set_color(
    {
        type = "linear",
        from = {0, 0},
        to = {10, 0},
        stops = {
            {0, "#AECF96"},
            {0.5, "#88A175"},
            {1, "#FF5656"}
        }
    }
)
-- Register widget
vicious.register(memwidget2, vicious.widgets.mem, "$1", 10)

-- Initialize widget
cpuwidget = awful.widget.graph()
-- Graph properties
cpuwidget:set_width(50)
cpuwidget:set_background_color("#494B4F")
cpuwidget:set_color(
    {
        type = "linear",
        from = {0, 0},
        to = {10, 0},
        stops = {
            {0, "#FF5656"},
            {0.5, "#88A175"},
            {1, "#AECF96"}
        }
    }
)
-- Register widget
vicious.register(cpuwidget, vicious.widgets.cpu, " $1")

-- Initialize widget
cpuwidget2 = wibox.widget.textbox()
-- Register widget
vicious.register(cpuwidget2, vicious.widgets.cpu, ' CPU: <span color="#CC9933">$1%</span>', 1)

-- wifi widget
wifiwidget = wibox.widget.textbox()
vicious.register(
    wifiwidget,
    vicious.widgets.wifi,
    'Connected to <span color="#7F9F7F">${ssid}</span> at <span color="#7F9F7F">${linp}%</span> | ',
    2,
    "wlp3s0"
)

--Weather Widget
weather = wibox.widget.textbox()
vicious.register(
    weather,
    vicious.widgets.weather,
    " Weather: ${city} | Temp: ${tempf}⁰F (${tempc}⁰C) | Humid: ${humid}% | ",
    1200,
    "KPVD"
)
---vicious.register(weather, vicious.widgets.weather, "Weather: ${city}.  Sky: ${sky}. Temp: ${tempc}c Humid: ${humid}%. Wind: ${windkmh} KM/h", 1200, "LFBO")
-- network widget

--
-- Possible network devices
eths = {"eth0", "wlp3s0"}
netwidget = wibox.widget.textbox()
vicious.register(
    netwidget,
    vicious.widgets.net,
    function(widget, args)
        t = ""
        for i = 1, #eths do
            e = eths[i]
            if args["{" .. e .. " carrier}"] == 1 then
                if e == "wlp3s0" then
                    t =
                        t ..
                        " " ..
                            'Wifi: <span color="#CC9933"> down: ' ..
                                args["{" .. e .. " down_kb}"] ..
                                    ' kbps</span>  <span color="#7F9F7F">up: ' ..
                                        args["{" .. e .. " up_kb}"] ..
                                            " kbps </span>" ..
                                                "[ " ..
                                                    args["{" .. e .. " rx_gb}"] ..
                                                        " GB // " .. args["{" .. e .. " tx_gb}"] .. " GB ] "
                else
                    t =
                        t ..
                        "| " ..
                            'Eth0: <span color="#CC9933"> down: ' ..
                                args["{" .. e .. " down_kb}"] ..
                                    ' kbps</span>  <span color="#7F9F7F">up: ' ..
                                        args["{" .. e .. " up_kb}"] ..
                                            " kbps </span>" ..
                                                "[ " ..
                                                    args["{" .. e .. " rx_gb}"] ..
                                                        " GB // " .. args["{" .. e .. " tx_gb}"] .. " GB ] "
                end
            end
        end
        if string.len(t) > 0 then -- remove leading '|'
            return string.sub(t, 1, -1)
        end
        return "No network detected "
    end,
    1
)

-- Initialize widget battery
batwidget = wibox.widget.textbox()
vicious.register(
    batwidget,
    vicious.widgets.bat,
    ' | Bat:<span color="#CC9933"> $2% </span> [<span color="#7F9F7F"> $3</span> ] ',
    60,
    "BAT0"
)
