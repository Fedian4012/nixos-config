{ config, pkgs, ... }:

{
  imports = [
    ./gnome
  ];

  # Définition de l'utilisateur
  home.username = "francois";
  home.homeDirectory = "/home/francois";

  home.stateVersion = "25.11";

  # Packages utilisateur
  home.packages = with pkgs; [
    firefox
    thunderbird
    vscode
  ];
  
  programs.gnome-shell = {
    enable = true;

    extensions = [
      {
        package = pkgs.gnomeExtensions.dash-to-dock;
      }
    ];
  };

  dconf.settings = {
    "org/gnome/shell/extensions/dash-to-dock" = {
      dock-position = "BOTTOM";
      autohide = true;
    };
  };
}
