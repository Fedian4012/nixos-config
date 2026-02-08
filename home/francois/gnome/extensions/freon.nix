{ config, pkgs, ... }:

{
  programs.gnome-shell.extensions = [
    {
      package = pkgs.gnomeExtensions.freon;
    }
  ];

  dconf.settings = {
    "org/gnome/shell/extensions/freon" = {
      hot-sensors = ['__max__', '__average__'];
      panel-box-index = 0;
      show-decimal-value = true;
      show-power-unit = true;
      use-drive-hddtemp = true;
    };
  };
}