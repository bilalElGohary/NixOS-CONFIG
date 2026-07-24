# NixOS-CONFIG

Personal NixOS configuration.using = with pkgs ; { flakes, home-manager, unstable-channel }.

## Structure
```
[user@nixos:~/../../NixOS]$ tree
.
├── configuration
│   ├── configuration.nix
│   ├── hardware-configuration.nix
│   └── modules
│       ├── flatpak.nix
│       ├── font.nix
│       ├── hypr.nix
│       ├── locale.nix
│       ├── niri.nix
│       ├── services.nix
│       ├── system.nix
│       ├── theme.nix
│       └── users.nix
├── flake.lock
├── flake.nix
├── homeManager
│   ├── home.nix
│   └── modules
│       ├── fastfetch
│       │   ├── fastfetch
│       │   │   ├── ascii0.txt
│       │   │   └── config.jsonc
│       │   └── fastfetch.nix
│       ├── fish
│       │   └── fish.nix
│       ├── hypr
│       │   ├── hypr
│       │   │   └── hyprland.conf
│       │   └── hypr.nix
│       ├── niri
│       │   ├── niri
│       │   │   ├── config.kdl
│       │   │   └── noctalia.kdl
│       │   └── niri.nix
│       └── ssh
│           └── ssh.nix
└── README.md

13 directories, 25 files

[user@nixos:~/../../NixOS]$
```
