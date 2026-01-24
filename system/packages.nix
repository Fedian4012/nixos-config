{config, pkgs, ...}:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    os-prober
    efibootmgr
    emacs
    git
    gh
    wget
    tree
  ];
}