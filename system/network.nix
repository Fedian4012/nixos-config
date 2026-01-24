# Gestion du réseau
{config, pkgs, ...}:

{
  networking = {
    hostName = "francois-nixos";
    networkmanager.enable = true;
    firewall = {
      enable = false;
    };
  };
}
