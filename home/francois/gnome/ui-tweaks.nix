{ config, pkgs, ... }:

{
  dconf.settings."org/gnome/desktop/interface" = {
  clock-show-seconds = true;
  clock-show-weekday = true;
  
  enable-hot-corners = false;
  locate-pointer = true;
  };
}