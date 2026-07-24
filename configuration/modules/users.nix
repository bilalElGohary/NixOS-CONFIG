{ config, pkgs, ... }:

{
  programs.fish.enable = true;

  users.users."bilal" = {
    isNormalUser = true;
    description = "bilal";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };
}
