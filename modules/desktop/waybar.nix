{ config, pkgs, ... }:
{
  programs.waybar = {
    enable = true;

    settings = [
      # laptop screen
      {
        layer = "bottom";
        # ouput = "";
        position = "top";
        height = 30;
        modules-left = [
        # "custom/logo"
         "hyprland/workspaces"
         "hyprland/window"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "pulseaudio"
          "network"
          "tray"
        ];

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
            empty = "";
            persistent = "";
            special = "";
            urgent = "";
          };
          show-special = true;
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
        };

        "clock" = {
          timezone = "UTC";
          interval = 1;
          format = "{:%H:%M:%S}";
          format-alt = "{:%d/%m/%g 𐲨 %A}";
          tooltip-format = "{calendar}";

          calendar = {
            mode = "month";
            on-click-right = "mode";
            format = {
              months = "<span color='#DBBC7F'><b>{}</b></span>";
              days = "<span color='#A7C080'><b>{}</b></span>";
              weeks = "<span color='#E69875'><b>{}</b></span>";
              weekdays = "<span color='#E67E80'><b>{}</b></span>";
              today = "<span color='#83C092'><b>{}</b></span>";
            };
          };
        };
      }
    ];

    # style = {};
  };
}
