local wibox = require("wibox")
local awful = require("awful")

spotify_widget = wibox.widget.textbox()

function updateSpotifyWidget(widget)
    local file = assert(io.popen('bash $HOME/.config/awesome/scripts/sp current-oneline', 'r'))
    local current = file:read('*all')
    file:close()
    widget:set_text(' | Spotify Now Playing: '..current)
end

spotify_timer = timer ({timeout = 10})
spotify_timer:connect_signal ("timeout", function() updateSpotifyWidget(spotify_widget) end)
spotify_timer:start()

spotify_timer:emit_signal("timeout")
