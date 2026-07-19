{config, pkgs, ...}:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    nh
    
    os-prober
    efibootmgr
    gparted

    git
    gh

    wget
    tree
    btop

    sane-airscan  # Pour les scanners compatibles AirPrint/IPP (optionnel mais utile)
    epson-escpr    # Pilote Epson (peut inclure le support scanner)
    simple-scan 
  ];
}
