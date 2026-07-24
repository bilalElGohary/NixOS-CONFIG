{ config, pkgs, ... }:

{
  home.file = {
    ".config/niri/config.kdl".text = builtins.readFile ./niri/config.kdl;
    ".config/niri/noctalia.kdl".text = builtins.readFile ./niri/noctalia.kdl;
  };
}

