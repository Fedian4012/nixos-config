# Gestion du bootloader

{config, pkgs, ...}:

{
  boot.loader = {
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = true;

    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      useOSProber = false;
      timeout = 5;
    };
  };
}
