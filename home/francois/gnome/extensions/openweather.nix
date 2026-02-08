{ config, pkgs, ... }:

{
  programs.gnome-shell.extensions = [
    {
      package = pkgs.gnomeExtensions.openweather;
    }
  ];

  dconf.settings = {
    "org/gnome/shell/extensions/openweather" = {
      actual-city=1;
      # bon du coup, je dis sur Github quelle est ma ville, tant pis, mais je compte sur vous pour ne pas utiliser cette info contre moi
      city='47.5171973,-1.295781>Riaillé, Châteaubriant-Ancenis, Loire-Atlantique, Pays de la Loire, France métropolitaine, 44440, France>0';
    };
  };
}