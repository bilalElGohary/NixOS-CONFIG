{ config, pkgs, lib, ... }:

{
  services = { 
    displayManager.ly.enable = true;
    power-profiles-daemon.enable = true;
    
    desktopManager.gnome.enable = true;
    gnome.core-os-services.enable = true;
    
    desktopManager.plasma6.enable = false;

    xserver = {
      enable = true;

      xkb = {
        layout = "us,ara";
        options = "grp:alt_shift_toggle";
      };
    };
  };

  # programs.ssh.askPassword = lib.mkForce "${pkgs.kdePackages.ksshaskpass}/bin/ksshaskpass";
}
