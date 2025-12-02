#

{ config, pkgs, lib, ... }:

let
  cfg = config.software.forgejo;

  forgejoEnv = {
    CODEBERG_IMAGE = "codeberg.org/forgejo/forgejo:13";
    CONTAINER_NAME = "forgejo";
    DATA_LOCATION = "${cfg.dataDirectory}/data";
    TZ = "Europe/Berlin";
  };

  # Create .env file content
  envFileContent = lib.concatStringsSep "\n" (
    lib.mapAttrsToList (name: value: "${name}=${value}") forgejoEnv
  );

in {
  options = {
    software.forgejo = {
      enable = lib.mkEnableOption "enable forgejo";

      dataDirectory = lib.mkOption {
        type = lib.types.path;
        description = lib.mdDoc ''
          Parent directory of all forgejo data that should be backed up.
        '';
      };
    };
  };

  config = lib.mkIf cfg.enable {
    # Create necessary directories
    systemd.tmpfiles.rules = [
      "d ${cfg.dataDirectory} 0755 root root -"
      "d ${cfg.dataDirectory}/data 0755 root root -"
    ];

    # Copy the docker-compose.yaml file to /etc/forgejo/
    environment.etc."forgejo/docker-compose.yaml" = {
      source = ./docker-compose.yaml;
      mode = "0644";
    };

    # Create the .env file
    environment.etc."forgejo/.env" = {
      text = envFileContent;
      mode = "0600";
    };

    systemd.services.forgejo = {
      description = "Forgje Git Server";
      after = [ "docker.service" "network.target" ];
      wants = [ "docker.service" ];
      wantedBy = [ "multi-user.target" ];

      serviceConfig = {
        Type = "oneshot";
        RemainAfterExit = true;
        WorkingDirectory = "/etc/forgejo";
        TimeoutStartSec = "0";
      };

      script = ''
        # Start services using docker-compose
        ${pkgs.docker-compose}/bin/docker-compose up -d
      '';

      preStop = ''
        cd /etc/forgejo
        ${pkgs.docker-compose}/bin/docker-compose down
      '';

      restartTriggers = [
        config.environment.etc."forgejo/docker-compose.yaml".source
        config.environment.etc."forgejo/.env".source
      ];
    };
  };
}
