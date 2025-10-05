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
            "1" = "";
            "2" = "";
            "3" = "󰺷";
            "4" = "";
            "5" = "";
            "6" = "";
            special = "";
            urgent = "";
          };
          show-special = true;
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
        };

        "hyprland/window" = {
          format = " {title}";
          
        };

        "clock" = {
          timezone = "America/Sao_Paulo";
          interval = 1;
          format = "{:%H:%M:%S}";
          format-alt = "{:%d/%m/%g 𐲨 %A}";
          on-click = ""; # add eww widget
        };
      }
    ];

    # style = {};
  };
}
