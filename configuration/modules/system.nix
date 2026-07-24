{ config, pkgs, ... }:

{
  # Boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.hostName = "3nab";
  networking.networkmanager.enable = true;

  # Printing + Audio + Bluetooth
  services.printing.enable = true;

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # SSH
  services.openssh.enable = true;

  # System packages
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    vim wget git
    btop htop fastfetch
    alacritty lsd sl sshfs
  ];
 
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages;
  services.thermald.enable = true; # Prevents Intel/AMD overheating

  # collect garbage
  nix.gc = {
    automatic = true;
    dates = "weekly"; 
    options = "--delete-older-than 7d";
  };

  nix.settings.auto-optimise-store = true;
}
