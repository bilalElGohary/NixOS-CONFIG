{ config, pkgs, ... }:

{
  programs = {ssh = { enable = false; }; };
}
