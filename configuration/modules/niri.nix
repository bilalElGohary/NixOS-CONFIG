{ config, pkgs, ... }:

{
  programs.niri.enable = false;
  
  environment.systemPackages = with pkgs; [
    noctalia-shell
    noctalia-qs
  ];
}
