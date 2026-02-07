{config, pkgs, ...}:

{
  # Optimisation automatique du store
  nix.settings.auto-optimise-store = true;

  # Activation du garbage collector automatique
  nix.gc.automatic = true;

  # Fréquence des GC automatiques : "weekly", "daily", etc.
  nix.gc.dates = "weekly";

  # Options supplémentaires passées à nix-collect-garbage
  nix.gc.options = "--delete-older-than 15d"; # supprime tout ce qui date de plus de 15 jours
}
