{ pkgs, ... }:

{
  home.username = "francois";
  home.homeDirectory = "/home/francois";

  home.stateVersion = "25.11";

  programs.zsh.enable = true;
  programs.git.enable = true;
}
