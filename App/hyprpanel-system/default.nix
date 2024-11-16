# Hyprpanel is the bar on top of the screen
# Display informations like workspaces, battery, wifi, ...
{ pkgs, config, ... }:
let
in {
  wayland.windowManager.hyprland.settings.exec-once =
    [ "${pkgs.hyprpanel}/bin/hyprpanel" ];

  home.packages = [ pkgs.libnotify ];

  home.file.".cache/ags/hyprpanel/options.json" = {
    text = # json
      ''
        {
          "bar.layouts": {
            "0": {
              "left": [
                "dashboard",
                "workspaces",
                "windowtitle"
              ],
              "middle": [
                "media"
              ],
              "right": [
                "systray",
                "volume",
                "bluetooth",
                "battery",
                "network",
                "clock",
                "notifications"
              ]
            },
            "1": {
              "left": [
                "dashboard",
                "workspaces",
                "windowtitle"
              ],
              "middle": [
                "media"
              ],
              "right": [
                "systray",
                "volume",
                "bluetooth",
                "battery",
                "network",
                "clock",
                "notifications"
              ]
            },
            "2": {
              "left": [
                "dashboard",
                "workspaces",
                "windowtitle"
              ],
              "middle": [
                "media"
              ],
              "right": [
                "systray",
                "volume",
                "bluetooth",
                "battery",
                "network",
                "clock",
                "notifications"
              ]
            }
          },
          "theme.bar.buttons.padding_x": "0.8rem",
          "theme.bar.buttons.padding_y": "0.4rem",



          "bar.launcher.icon": "",
          "bar.workspaces.show_numbered": false,
          "bar.workspaces.workspaces": 5,
          "bar.workspaces.monitorSpecific": true,
          "bar.workspaces.hideUnoccupied": false,
          "bar.windowtitle.label": true,
          "bar.volume.label": false,
          "bar.network.truncation_size": 12,
          "bar.bluetooth.label": false,
          "bar.clock.format": "%a %b %d  %I:%M %p",
          "bar.notifications.show_total": true,
          "theme.osd.enable": true,
          "theme.osd.orientation": "vertical",
          "theme.osd.location": "left",
          "theme.osd.margins": "0px 0px 0px 10px",
          "theme.osd.muted_zero": true,
          "menus.clock.weather.key": "myapikey",
          "menus.clock.weather.unit": "metric",
          "menus.dashboard.powermenu.confirmation": false,

          "menus.dashboard.shortcuts.left.shortcut1.icon": "",
          "menus.dashboard.shortcuts.left.shortcut1.command": "qutebrowser",
          "menus.dashboard.shortcuts.left.shortcut1.tooltip": "Qutebrowser",
          "menus.dashboard.shortcuts.left.shortcut2.icon": "󰅶",
          "menus.dashboard.shortcuts.left.shortcut2.command": "caffeine",
          "menus.dashboard.shortcuts.left.shortcut2.tooltip": "Caffeine",
          "menus.dashboard.shortcuts.left.shortcut3.icon": "󰖔",
          "menus.dashboard.shortcuts.left.shortcut3.command": "night-shift",
          "menus.dashboard.shortcuts.left.shortcut3.tooltip": "Night-shift",
          "menus.dashboard.shortcuts.left.shortcut4.icon": "",
          "menus.dashboard.shortcuts.left.shortcut4.command": "menu",
          "menus.dashboard.shortcuts.left.shortcut4.tooltip": "Search Apps",
          "menus.dashboard.shortcuts.right.shortcut1.icon": "",
          "menus.dashboard.shortcuts.right.shortcut1.command": "hyprpicker -a",
          "menus.dashboard.shortcuts.right.shortcut1.tooltip": "Color Picker",
          "menus.dashboard.shortcuts.right.shortcut3.icon": "󰄀",
          "menus.dashboard.shortcuts.right.shortcut3.command": "screenshot region swappy",
          "menus.dashboard.shortcuts.right.shortcut3.tooltip": "Screenshot",

          "menus.dashboard.directories.left.directory1.label": "󰉍 Downloads",
          "menus.dashboard.directories.left.directory1.command": "bash -c \"thunar $HOME/Downloads/\"",
          "menus.dashboard.directories.left.directory2.label": "󰉏 Pictures",
          "menus.dashboard.directories.left.directory2.command": "bash -c \"thunar $HOME/Pictures/\"",
          "menus.dashboard.directories.left.directory3.label": "󱧶 Documents",
          "menus.dashboard.directories.left.directory3.command": "bash -c \"thunar $HOME/Documents/\"",
          "menus.dashboard.directories.right.directory1.label": "󱂵 Home",
          "menus.dashboard.directories.right.directory1.command": "bash -c \"thunar $HOME/\"",
          "menus.dashboard.directories.right.directory2.label": "󰚝 Projects",
          "menus.dashboard.directories.right.directory2.command": "bash -c \"thunar $HOME/dev/\"",
          "menus.dashboard.directories.right.directory3.label": " Config",
          "menus.dashboard.directories.right.directory3.command": "bash -c \"thunar $HOME/.config/\"",

          "theme.bar.menus.monochrome": true,
          "wallpaper.enable": false,
          }",
          "theme.bar.menus.menu.media.card.tint": 90,
          "bar.customModules.updates.pollingInterval": 1440000,
          "bar.media.show_active_only": true,
        }
      '';
  };
}
