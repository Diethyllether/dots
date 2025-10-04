{ config, pkgs, ... }:
{
  imports = [
    ./desktop/hyprland.nix
    ./desktop/waybar.nix
  ];

  services = {
    dunst = {
      enable = true;
      waylandDisplay = "wayland-0";
    };
    swww.enable = true;
  };
}
