{ config, pkgs, ... }:

{
  dconf.settings."org/gnome/desktop/background" = {
  picture-uri = "file:///home/francois/Images/Fullmetal Alchemist Brotherhood.jpg";
  picture-uri-dark = "file:///home/francois/Images/Fullmetal Alchemist Brotherhood.jpg";
  picture-options = "scaled";  # ou scaled, centered, etc.
};

}