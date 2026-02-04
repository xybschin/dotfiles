{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 50000;
      save = 50000;
      path = "${config.home.homeDirectory}/.zsh_history";
      ignoreDups = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      extended = true;
      share = true;
    };

    historySubstringSearch.enable = true;
    oh-my-zsh.enable = true;
  };

  home.file.".zshrc".source = ./config/zshrc;
  home.file.".aliases.zsh".source = ./config/aliases.zsh;
  home.file.".oh-my.zsh".source = ./config/oh-my.zsh;
}
