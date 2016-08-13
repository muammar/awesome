-- Startup programs
--

local awful = require("awful")
-- Starting before spawn_with_shell
--
os.execute("gnome-terminal &")
os.execute("wicd-client -t &")
--testing os.execute("/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &")
--os.execute("nm-applet &")

-- GB Keyboard
--os.execute("setxkbmap -model pc105 -layout gb -variant mac_intl -option grp:shift_caps_toggle &")
-- US keyboard
os.execute("setxkbmap -model pc105 -layout us -variant intl -option grp:shift_caps_toggle &")
---os.execute("xrdb -merge ~/.Xresources")
--
-- GNome components
--awful.util.spawn_with_shell("gnome-session")
--awful.util.spawn_with_shell("gnome-screensaver")
awful.util.spawn_with_shell("gnome-settings-daemon")
--testing awful.util.spawn_with_shell("gnome-keyring-daemon")
-- End GNome
--

--awful.util.spawn_with_shell("sh ~/.config/awesome/scripts/monitorretina")
awful.util.spawn_with_shell("xfce4-power-manager")
awful.util.spawn_with_shell("sleep 20; volumeicon") -- Volume icon
awful.util.spawn_with_shell("rm ~/.dispad.pid; dispad -F")
awful.util.spawn_with_shell("sleep 5; conky -c /home/$USER/.config/awesome/conky/conky_simple/conkyrc")
awful.util.spawn_with_shell("dropbox start")
awful.util.spawn_with_shell("/home/$USER/.config/awesome/scripts/xmodmapawesome")
--awful.util.spawn_with_shell("xscreensaver -no-splash")
awful.util.spawn_with_shell("feh --bg-fill /home/$USER/.config/awesome/wallpaper/funnysystem.jpg") --Set wallpaper

-- HiDPI specifics
--
awful.util.spawn_with_shell("xrdb -merge /home/$USER/.config/awesome/scripts/Xdefaults.hidpi")
