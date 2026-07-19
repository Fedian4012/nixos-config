{ config, pkgs, ... }:

{
  users.users = {
    francois = {
    isNormalUser = true;
    description = "François Ruau";
    extraGroups = [ "networkmanager" "wheel" "scanner"];
    };
  };
}
