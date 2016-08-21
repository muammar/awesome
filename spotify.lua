local wibox = require("wibox")
local awful = require("awful")

spotify_widget = wibox.widget.textbox()

function updateSpotifyWidget(widget)
  local current = awful.util.pread('bash $HOME/.config/awesome/scripts/sp current-oneline')
  widget:set_markup(' | <span color="green">Spotify Now Playing: </span>'..current)
end

spotify_timer = timer ({timeout = 10})
spotify_timer:connect_signal ("timeout", function() updateSpotifyWidget(spotify_widget) end)
spotify_timer:start()

spotify_timer:emit_signal("timeout")
