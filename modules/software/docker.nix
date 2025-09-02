{ config, lib, pkgs, ... }:

{
  options = {
    software.docker.enable = lib.mkEnableOption "enable docker";
  };

  config = lib.mkIf config.software.docker.enable {
    virtualisation.docker = {
      enable = true;
    };
  };
}