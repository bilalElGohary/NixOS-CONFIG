{ config, pkgs, ... }:
{
  programs = {
    fish = {
      enable = true;
      shellAliases = {
   	rebuild = "sudo nixos-rebuild switch --flake ~/NixOS#3nab";
	update = "nix flake update --flake ~/NixOS";
        umountserver = "sshfs hamada@192.168.1.115:/home/hamada/";
	server = "ssh hamada@192.168.1.115";
      };
    };
  };
}
