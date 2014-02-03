awesome
=======

This is my rc.lua file for the windows manager awesome. I use this
configuration in my Macbook Pro 13" running Debian unstable.

The services launched when logging in are:

    - xfce4-power-manager.
    - gnome-terminal (not mandatory).
    - volumeicon.
    - nm-applet (not mandatory).
    - polkit-gnome-authentication-agent-1 (mandatory if using nm-applet).
    - conky (not mandatory).

*Note*: This does not need Gnome-shellanymore. As a personal preference, I like
gnome-terminal, and nm-applet. Those are the only required components
(polkit-gnome-authentication-agent-1 if nm-applet is used).

Requirements
============

In order of using this rc.lua you need to have installed the packages listed in
the "services launched when logging in" shown above.

Screenshot
==========

![Alt text](screenshots/Awesome_lua.png?raw=true)
