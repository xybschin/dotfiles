{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    neovim
    wezterm
    ripgrep
    fd
    fzf
    lazygit
    ducker
    btop
    nerd-fonts.jetbrains-mono
  ];
}
