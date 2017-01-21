-- Standard awesome library
local spawn = require("awful.spawn")

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
spawn.with_shell("gnome-settings-daemon")
--testing spawn.with_shell("gnome-keyring-daemon")

-- Network applet
spawn.with_shell("sleep 3; nm-applet")

-- Power management
spawn.with_shell("xfce4-power-manager")

-- Volume icon
spawn.with_shell("volumeicon")

-- Deactivate keyboard while typing
spawn.with_shell("rm ~/.dispad.pid; dispad -F")

-- Start Conky
spawn.with_shell("conky -c /home/$USER/.config/awesome/conky/conky_simple/conkyrc")

-- Start Dropbox Daemon
spawn.with_shell("dropbox start")

-- Set wallpaper and screensaver
spawn.with_shell("feh --bg-fill /home/$USER/.config/awesome/wallpaper/funnysystem.jpg")
spawn.with_shell("xscreensaver -no-splash")

-- Configuration scripts and HiDPI specifics
spawn.with_shell("/home/$USER/.config/awesome/scripts/xmodmapawesome")
spawn.with_shell("sleep 3; xrdb -merge /home/$USER/.config/awesome/scripts/Xdefaults.hidpi")
--spawn.with_shell("sh ~/.config/awesome/scripts/monitorretina")
