{ config, pkgs, ... }:

{
  gtk = {
    enable = true;

    theme = {
      name = "Orchis-Dark";
      package = pkgs.orchis-theme;
    };

    iconTheme = {
      name = "Colloid-Dark";
      package = pkgs.colloid-icon-theme;
    };

    font = {
      name = "Roboto 11";
    };

    cursorTheme = {
      name = "Catppuccin-Latte-Peach";
      package = pkgs.catppuccin-cursors.lattePeach;
      size = 24;
    };
  };

  home.pointerCursor = {
    name = "Catppuccin-Latte-Peach";
    package = pkgs.catppuccin-cursors.lattePeach;
    size = 24;
  };

  dconf.settings."org/gnome/desktop/interface" = {
    color-scheme = "prefer-dark";
    accent-color = "yellow";
  };
}
