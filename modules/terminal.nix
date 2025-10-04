{ config, pkgs, ... }:

{
  imports = [
    ./terminal/helix.nix
    ./terminal/wezterm.nix
  ];

  programs = {
    git = {
      enable = true;
      diff-so-fancy.enable = true;
      userName = "Felipe Cornélio Leite";
      userEmail = "felipecornelio@outlook.com.br";
      extraConfig = {
        init.defaultBranch = "master";
        safe.direcctory = "/etc/nixos";
      };
    };
  };
}
