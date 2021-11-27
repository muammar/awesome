awesome
=======

My rc.lua file for the windows manager `awesome`. I use this
configuration on many of my machines running Debian unstable.

The services launched when logging in are:

    - xfce4-power-manager.
    - volumeicon.
    - xscreensaver.
    - polkit-gnome-authentication-agent-1 (mandatory if using nm-applet).
    - gnome-settings-daemon (mandatory if using gnome-terminal). If you are not
      using gnome-terminal, please comment gnome-settings-daemon in rc.lua file.
    - gnome-terminal (not mandatory).
    - Wicd (optional).
    - nm-applet (not mandatory).
    - conky (not mandatory).
    - dispad (not mandatory).
    - dropbox (not mandatory).

There are only two **required components** being xfce4-power-manager and volumeicon.

If using gnome-terminal and nm-applet then `polkit-gnome-authentication-agent-1` (for `nm-applet`) , and
gnome-settings-daemon (for `gnome-terminal`) are necessary.

With `xfce4-power-manager`, it is possible to make works most of the hotkeys. The use of `gnome-settings-daemon` avoids losing the contrast of active tabs in `gnome-terminal`.


Requirements
============

To use this `rc.lua`, you must install the packages listed in
the "services launched when logging in" shown above. If you want to use this configuration as it is, install the following:

* gnome-terminal.
* wicd-client.
* gnome-settings-daemon.
* xfce4-power-manager.
* volumeicon.
* dispad.
* conky.
* dropbox.
* feh.

Install
=======

To use these `awesome`'s configurations, you have to:

1. Clone this repository in `~/.config/`:

```
cd ~/.config/
git clone https://muammar@github.com/muammar/awesome.git
```

2. Install required programs or those that you need.

On Debian based systems:

```
sudo apt install xfce4-power-manager volumeicon-alsa xscreensaver policykit-1-gnome gnome-settings-daemon network-manager-gnome conky
```

3. Change `eths` array in [line 87 of `widgets.lua`](https://github.com/muammar/awesome/blob/master/widgets.lua#L87) to add your network devices.
4. Modify [`setxkbmap` in line 15 of `rc.lua`](https://github.com/muammar/awesome/blob/master/autostart.lua#L15) to match your keyboard.
5. Log out and Log in.

## Startup applications

All startup applications are in `autostart.lua`. You can change this file to your needs.

## HiDPI screens

As of awesome wm 4.0, the WM appropriately manages the scaling of the screen. The only necessary change you may do is related to the scaling factor. In my case, as I use gnome, I change it as shown below.

* Change the scaling factor for Gnome applications:

```
gsettings set org.gnome.desktop.interface scaling-factor 2
```

Screenshot
==========

![Alt text](screenshots/Screenshot.png?raw=true)
