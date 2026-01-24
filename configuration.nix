{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      ./system/boot.nix
      ./system/locale.nix
      ./system/network.nix
      ./system/packages.nix
      ./system/x11.nix    
 
      ./system/services

      ./users/francois.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05"; # Did you read the comment?
}
