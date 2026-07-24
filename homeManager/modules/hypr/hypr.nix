{ config, pkgs, ... }:

{
  home.file = {
    ".config/hypr/hyprland.conf".text = builtins.readFile ./hypr/hyprland.conf;
  };
}
