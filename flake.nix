{
  description = "La configuration NixOS de François";

  # -------------------
  # Inputs du flake
  # -------------------
  inputs = {
    # Nixpkgs pour NixOS
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    # Home Manager pour gérer la config utilisateur
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      # On s'assure que la version de nixpkgs utilisée par HM suit celle du flake
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # -------------------
  # Outputs
  # -------------------
  outputs = { nixpkgs, home-manager, ... }: 
    let
      system = "x86_64-linux";  # Architecture de la machine
    in
    {
      # Configurations NixOS disponibles dans ce flake
      nixosConfigurations = {
        francois-nixos = nixpkgs.lib.nixosSystem {
          inherit system;

          # Modules NixOS à inclure
          modules = [
            ./hosts/tourdev-papa/configuration.nix # Fichier principal
            home-manager.nixosModules.home-manager # Ajout de Home Manager comme module NixOS
            {
              # Options Home Manager
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              # Déclaration de ton utilisateur
              home-manager.users.francois = import ./home/francois/home.nix;
            }
          ];
        };
      };
    };
}
