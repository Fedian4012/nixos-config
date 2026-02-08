{ config, pkgs, ... }:

{
  programs.gnome-shell.extensions = [
    {
      package = pkgs.gnomeExtensions.compiz-windows-effect;
    }
  ];

  dconf.settings = {
    "org/gnome/shell/extensions/com/github/hermes83/compiz-windows-effect" = {
      last-version = 29;
      preset = 'R';
      resize-effect = true;
    };
  };
}