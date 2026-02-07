{config, pkgs, ...}:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    orchis-theme
    colloid-icon-theme
    catppuccin-cursors.lattePeach
    roboto
    nerd-fonts.hack
  ];
}