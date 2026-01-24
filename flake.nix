{
  # Une courte description de ton flake, pour documentation
  description = "Configuration NixOS de François";

  # Définition des inputs : toutes les sources externes dont ce flake dépend
  inputs = {
    # On prend nixpkgs depuis GitHub, version NixOS 25.11
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    # Plus tard, tu pourrais ajouter Home Manager ou d'autres flakes
    # home-manager.url = "github:nix-community/home-manager";
  };

  # Outputs définit ce que le flake produit
  outputs = { self, nixpkgs, ... }:  # self = ce flake, nixpkgs = input défini plus haut
  let
    # Définition de l'architecture de la machine. Ici x86_64
    system = "x86_64-linux";
  in
  {
    # Section réservée aux configurations NixOS
    nixosConfigurations = {
      # Nom de la machine : tu peux mettre le hostname ou un nom quelconque
      nixos = nixpkgs.lib.nixosSystem {
        # On passe l'architecture
        inherit system;

        # Liste des modules NixOS à inclure dans la build
        modules = [
          ./configuration.nix   # Ton fichier principal, qui inclut déjà tes sous-modules
        ];

        # Tu pourrais ajouter ici des overrides spécifiques ou d'autres options,
        # comme l'utilisation de Home Manager intégré via flake
      };
    };
  };
}
