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


  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24; # optionnel
  };

  # Important : active aussi GTK integration
  gtk.enable = true;

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
