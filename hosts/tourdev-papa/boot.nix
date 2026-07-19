# Gestion du bootloader

{config, pkgs, ...}:

{
  boot = {
    loader = {
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = false;

      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        efiInstallAsRemovable = true;       
        useOSProber = false;
      };

      timeout = 5;
    };

    # plymouth = {
    #   enable = true;
    #   theme = "lone";
    #   themePackages = with pkgs; [
    #     # By default we would install all themes
    #     (adi1090x-plymouth-themes.override {
    #       selected_themes = [ "lone" ];
    #     })
    #   ];
    # };

    # # Enable "Silent boot"
    # consoleLogLevel = 3;
    # initrd.verbose = false;
    # kernelParams = [
    #   "quiet"
    #   "udev.log_level=3"
    #   "systemd.show_status=auto"
    # ];
  };
}
