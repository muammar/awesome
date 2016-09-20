awesome
=======

This is my rc.lua file for the windows manager awesome. I use this
configuration in my Macbook Pro 13" (Retina) running Debian unstable.

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

With `xfce4-power-manager` is possible to make works most of the hotkeys. As for  the use of `gnome-settings-daemon`, this is for avoid loosing the contrast of active tabs in `gnome-terminal`.


Requirements
============

In order of using this `rc.lua` you need to have installed the packages listed in
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

To use these awesome configurations, you have to:

1. Clone this repository in `~/.config/`:

```
cd ~/.config/
git clone https://muammar@github.com/muammar/awesome.git
```

2. Install required programs, or those that you need.
3. Change `eths` array in [line 64 of `widgets.lua`](https://github.com/muammar/awesome/blob/master/widgets.lua#L64) to add your network devices.
4. Modify `setxkbmap` to match your keyboard.
5. Log out and Log in.

## Startup applications

All startup applications are located in `autostart.lua`. You can change this file to your needs.

## HiDPI screens

There is a way to make this work for the macbook pro 13" retina 2015. Three
changes are needed:

* One has to change the `height` of the wibox in `rc.lua`:

Example:

```
mywibox[s] = awful.wibox({ position = "top", height = "34", screen = s })
```

* Change the `theme.font` size in
   `/usr/share/awesome/themes/<yourtheme>/theme.lua` to `16`.

**Note**: these settings shouldn't play well with external monitors, and they
    are far from being perfect.
    
* Change the scaling factor for Gnome applications:

```
gsettings set org.gnome.desktop.interface scaling-factor 2
```

Screenshot
==========

![Alt text](screenshots/Screenshot.png?raw=true)
