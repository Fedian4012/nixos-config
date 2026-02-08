{ config, pkgs, ... }:

{
  programs.gnome-shell.extensions = [
    {
      package = pkgs.gnomeExtensions.system-monitor;
    }
  ];
}