{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    neovim
    ripgrep
    fd
    fzf
    lazygit
    htop
    jq
    nerd-fonts.jetbrains-mono
  ];
}
