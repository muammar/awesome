awesome
=======

This is my rc.lua file for the windows manager awesome. I use this
configuration in my Macbook Pro 13" running Debian unstable.

The services launched when logging in are:

    - xfce4-power-manager.
    - volumeicon.
    - polkit-gnome-authentication-agent-1 (mandatory if using nm-applet).
    - gnome-settings-daemon (mandatory if using gnome-terminal). If you are not
      using gnome-terminal, please comment gnome-settings-daemon in rc.lua file.
    - gnome-terminal (not mandatory).
    - nm-applet (not mandatory).
    - conky (not mandatory).

This does not need Gnome-shell anymore. As a personal preference, I like
gnome-terminal, and nm-applet and that's why I have added them to my rc.lua.
Thus, there are only two required components being xfce4-power-manager and
volumeicon.

If using gnome-terminal and nm-applet then `polkit-gnome-authentication-agent-1`
(for `nm-applet`) , and gnome-settings-daemon (for `gnome-terminal`) are required.
`xfce4-power-manager` is capable of making work most of the hotkeys. As I have
a macbook pro, the keyboard backlight needed other little program in order to
work. I'll be adding them little by little. As for `gnome-settings-daemon`, this
is for avoid loosing the contrast of active tabs in `gnome-terminal`. Apparently,
there is another way to avoid this problem of the contrast. If I found
a solution I'll update this.

As for the background, I have decided for the moments set it from theme.lua,
I hope I can set it later from my rc.lua.

Requirements
============

In order of using this rc.lua you need to have installed the packages listed in
the "services launched when logging in" shown above.

I'll put more instructions later.

Screenshot
==========

![Alt text](screenshots/Screenshot.png?raw=true)
