{config, pkgs, ...}:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    nh
    
    os-prober
    efibootmgr

    git
    gh

    wget
    tree

    btop
  ];
}