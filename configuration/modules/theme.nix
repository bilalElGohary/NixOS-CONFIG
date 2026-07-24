{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    whitesur-gtk-theme 
    whitesur-icon-theme
    capitaine-cursors-themed
    gnome-tweaks
    gnome-shell-extensions
  ];
}
