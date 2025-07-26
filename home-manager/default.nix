{ config, lib, inputs, gnomeEnabled, pkgs, ... }:

{
  home.username = "max";
  home.homeDirectory = "/home/max";
  home.stateVersion = "25.05";

  imports = [
    ./dconf.nix
    ./vscode.nix
  ];

  home.packages = [
    # inputs.zen-browser.packages.${pkgs.system}.default
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

  home.sessionVariables = {
    EDITOR = "code";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}