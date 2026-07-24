{ config, pkgs, ... }:

{
  home = {
    username = "bilal";
    homeDirectory = "/home/bilal";
    stateVersion = "26.05";

    packages = with pkgs; [
      vim
      git
      btop
      wget
      firefox
      discord
      htop
      fastfetch
      alacritty
      lsd
      sl
      sshfs
      wiremix
      tree
      micro 
      fzf
      cava
      gimp
      python3
      python3Packages.pip
      vscode  
      lutris
      cmatrix
      obsidian
      yazi
      kdePackages.kdenlive
      obs-studio
      ppsspp-sdl-wayland
      # bottles
      zoom-us
      vlc
      yt-dlp
      pinta
      krita
      audacity
      speedtest-cli
      # steam
    ];
  };

  imports = [
    ./modules/fish/fish.nix
    # ./modules/niri/niri.nix
    ./modules/hypr/hypr.nix
    ./modules/fastfetch/fastfetch.nix
    ./modules/ssh/ssh.nix
  ];

}
