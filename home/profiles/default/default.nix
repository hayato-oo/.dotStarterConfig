{ pkgs, ... }:

{
  imports = [
    ./programs.nix
    ./overlays.nix
    ./programs
    ./common
    ./ui
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [ 
      pkgs.xdg-desktop-portal
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
    ];
  };

  xdg.portal.config = {
    common = {
      default = [
        "gtk"
        "hyprland"
      ];
    };
  };

  home = {
    username = "hayato";
    homeDirectory = "/home/hayato";
    sessionVariables = {
      EDITOR = "lvim";
    };
  };

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";

  home.stateVersion = "23.11";
}
