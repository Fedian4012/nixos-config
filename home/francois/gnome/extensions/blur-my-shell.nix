{ config, pkgs, ... }:

{
  programs.gnome-shell.extensions = [
    {
      package = pkgs.gnomeExtensions.blur-my-shell;
    }
  ];

  dconf.settings = {
    "org/gnome/shell/extensions/blur-my-shell" = {
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness=0.59999999999999998;
      sigma=30;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness=0.59999999999999998;
      sigma=30;
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness=0.59999999999999998;
      sigma=30;
    };
  };
}