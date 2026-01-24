{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      ./system/boot.nix
      ./system/gc.nix
      ./system/locale.nix
      ./system/network.nix
      ./system/packages.nix
      ./system/users.nix
      ./system/x11.nix    

      ./system/services
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Ne pas toucher à ce commentaire, le laisser à la version de la première installation du système, c'est à dire 25.05
  system.stateVersion = "25.05"; # Did you read the comment?
}
