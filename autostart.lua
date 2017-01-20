-- Standard awesome library
local awful = require("awful")

-- Startup programs
--
--
-- Programs starting before spawn_with_shell
--
os.execute("gnome-terminal &")
--os.execute("wicd-client -t &")
os.execute("/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &")

-- Keyboard configuration
--
-- US keyboard
os.execute("setxkbmap -model pc105 -layout us -variant intl -option grp:shift_caps_toggle &")
-- GB Keyboard
--os.execute("setxkbmap -model pc105 -layout gb -variant mac_intl -option grp:shift_caps_toggle &")

-- GNome components
awful.util.spawn_with_shell("gnome-settings-daemon")
--testing awful.util.spawn_with_shell("gnome-keyring-daemon")

-- Network applet
awful.util.spawn_with_shell("sleep 30; nm-applet")
-- Power management
awful.util.spawn_with_shell("xfce4-power-manager")

-- Volume icon
awful.util.spawn_with_shell("sleep 20; volumeicon")

-- Deactivate keyboard while typing
awful.util.spawn_with_shell("rm ~/.dispad.pid; dispad -F")

-- Start Conky
awful.util.spawn_with_shell("sleep 5; conky -c /home/$USER/.config/awesome/conky/conky_simple/conkyrc")

-- Start Dropbox Daemon
awful.util.spawn_with_shell("dropbox start")

-- Set wallpaper and screensaver
awful.util.spawn_with_shell("feh --bg-fill /home/$USER/.config/awesome/wallpaper/funnysystem.jpg")
awful.util.spawn_with_shell("xscreensaver -no-splash")

-- Configuration scripts and HiDPI specifics
awful.util.spawn_with_shell("/home/$USER/.config/awesome/scripts/xmodmapawesome")
awful.util.spawn_with_shell("sleep 10; xrdb -merge /home/$USER/.config/awesome/scripts/Xdefaults.hidpi")
--awful.util.spawn_with_shell("sh ~/.config/awesome/scripts/monitorretina")
