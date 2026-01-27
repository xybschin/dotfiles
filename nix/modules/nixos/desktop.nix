# wayland-sway.nix
{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = false;
  services.xserver.displayManager.lightdm.enable = false;
  services.xserver.desktopManager.plasma5.enable = false;
  services.xserver.desktopManager.gnome.enable = false;
  services.xserver.windowManager.i3.enable = false;

  programs.sway = {
    enable = true;
    extraPackages = with pkgs; [
      waybar
      grim
      slurp
      wl-clipboard
      rofi
      ghostty
    ];
  };

  environment.systemPackages = with pkgs; [
    sway
    swaylock
    swayidle
    seatd
    wayland
    xwayland
  ];

  services.seatd.enable = true;

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };

  services.xserver = {
    layout = "eu";
    xkbOptions = "caps:escape";
  };

  services.xserver.displayManager.greetd = {
    enable = true;
    settings = {
      default_session = "sway";
      sessions = [
        {
          name = "sway";
          command = "sway";
        }
      ];
    };
  };

  fonts = {
    enableDefaultFonts = true;
    packages = with pkgs; [
      noto-fonts
      noto-fonts-emoji
      font-awesome
      jetbrains-mono
    ];
  };
}

