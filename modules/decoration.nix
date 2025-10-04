{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    colorScheme = "dark";
  };
  
  home = {
    pointerCursor = {
      enable = true;
      dotIcons.enable = true;
      gtk.enable = true;
      hyprcursor.enable = true;

      package = pkgs.rose-pine-hyprcursor;
      name = "BreezeX-RosePine-Linux";
      size = 24;
      
    };
  };
}
