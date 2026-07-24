{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/system.nix
      ./modules/services.nix
      ./modules/locale.nix
      ./modules/users.nix
      ./modules/niri.nix
      ./modules/theme.nix
      ./modules/font.nix
      ./modules/hypr.nix
   ];

   nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    substituters = [ "https://cache.nixos.org/" ];
   };
 
   system.stateVersion = "26.05";
}
