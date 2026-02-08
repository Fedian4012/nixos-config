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
  };

  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
  };

  dconf.settings."org/gnome/desktop/interface" = {
    color-scheme = "prefer-dark";
    accent-color = "yellow";
  };
}
