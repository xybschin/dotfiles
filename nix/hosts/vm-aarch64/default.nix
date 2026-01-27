{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/boot.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/locale.nix
    ../../modules/nixos/packages.nix
  ];
  networking.hostName = "nixos-aarch64";
  programs.zsh.enable = true;
  system.stateVersion = "25.11";

  users.users.bs = {
    isNormalUser = true;
    description = "Bjarne Schindler";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

}
