{ config, lib, inputs, gnomeEnabled, pkgs, ... }:

{
  home.username = "max";
  home.homeDirectory = "/home/max";
  home.stateVersion = "25.05";

  imports = [
    ./dconf.nix
  ];


  home.packages = [
    # inputs.zen-browser.packages.${pkgs.system}.default
    pkgs.vscode
    # pkgs.spotify
    # pkgs.discord
    # pkgs.obs-studio
    # pkgs.anytype
  ];

  # TODO Git
  # programs.git = {
  #   enable = true;
  #   userName = "todo";
  #   userEmail = "todo";
  # };

  programs.vscode = {
  enable = true;
  package = pkgs.vscode;
  profiles.default = {
      extensions = with pkgs.vscode-extensions; [
      rust-lang.rust-analyzer
      ];
      userSettings = {
      "editor.rulers" = [ 80 120 ];
      "workbench.colorTheme" = "Dracula";
      };
  };
};

  home.sessionVariables = {
    EDITOR = "code";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}