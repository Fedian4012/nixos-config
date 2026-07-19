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
    discord

    libreoffice

    alacritty
    vscode
    virtualbox
  ];

  programs.gnome-shell.enable = true;
}
