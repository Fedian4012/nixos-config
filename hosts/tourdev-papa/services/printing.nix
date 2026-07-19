{config, pkgs, ...}:

{
  services.printing = {
  enable = true;
  drivers = [ pkgs.epson-escpr ]; # Pilote pour les imprimantes Epson (inclut l'ET-2856)
  };

  hardware.printers = {
  # ensureDefaultPrinter = "EPSON_ET_2856";
  # ensurePrinters = [
  #   {
  #     name = "EPSON_ET_2856";
  #     deviceUri = "ipp://192.168.1.252/ipp/print"; # URI IPP pour une connexion réseau
  #     model = "epson-inkjet-printer-escpr2/Epson-ET-2856-epson-escpr2-en.ppd"; # Pilote recommandé pour l'ET-2856
  #     location = "Maison"; # Optionnel : pour identifier l'emplacement
  #     ppdOptions = {
  #       PageSize = "A4"; # Optionnel : taille de page par défaut
  #     };
  #   }
  # ];
};
}