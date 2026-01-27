{ config, lib, pkgs, ... }:

{
  networking.networkmanager.enable = true;
  services.openssh.enable = true;
}
