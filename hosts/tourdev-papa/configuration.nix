{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      ./boot.nix
      ./desktop.nix
      ./gc.nix
      ./locale.nix
      ./network.nix
      ./packages.nix

      ./users.nix

      ./services
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  fonts.fontDir.enable = true;

  # Ne pas toucher à ce commentaire, le laisser à la version de la première installation du système, c'est à dire 25.05
  system.stateVersion = "25.05";
}
