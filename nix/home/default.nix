{ config, pkgs, lib, ... }:

{
  home.stateVersion = "25.11";

  home.username = "bs";
  home.homeDirectory = "/home/bs";

  imports = [
    ../modules/home/zsh
    ../modules/home/nvim
  ];

  programs.home-manager.enable = true;
}
