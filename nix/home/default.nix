{ config, pkgs, lib, ... }:

{
  imports = [
    ../modules/home/zsh
    # ../modules/home/nvim
    # ../modules/home/ghostty
    # ../modules/home/git.nix
    # ../modules/home/cli.nix
    # ../modules/home/apps.nix
    # ../modules/home/fonts.nix
  ];

  home.username = "bs";
  home.homeDirectory = "/home/bs";
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}
