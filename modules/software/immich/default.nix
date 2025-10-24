{ config, pkgs, lib, ... }:

let
  cfg = config.software.immich;

  # Find documentation for all the supported env variables at https://immich.app/docs/install/environment-variables
  immichEnv = {
    # The Immich version to use. You can pin this to a specific version like "v1.71.0"
    IMMICH_VERSION = "v2.1.0";

    # The location where your uploaded files are stored
    UPLOAD_LOCATION = "${cfg.dataDirectory}/library";

    # The location where your database files are stored. Network shares are not supported for the database
    DB_DATA_LOCATION = "${cfg.dataDirectory}/database";

    # To set a timezone, uncomment the next line and change Etc/UTC to a TZ identifier from this list: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List
    TZ = "Europe/Berlin";
    DB_USERNAME = "postgres";
    DB_PASSWORD = "postgres";
    DB_DATABASE_NAME = "immich";
  };

  # Create .env file content
  envFileContent = lib.concatStringsSep "\n" (
    lib.mapAttrsToList (name: value: "${name}=${value}") immichEnv
  );

in {
  options = {
    software.immich = {
      enable = lib.mkEnableOption "enable immich";

      dataDirectory = lib.mkOption {
        type = lib.types.path;
        description = lib.mdDoc ''
          Parent directory of all immich data that should be backed up.
        '';
      };
    };
  };

  config = lib.mkIf cfg.enable {
    # Create necessary directories
    systemd.tmpfiles.rules = [
      "d ${cfg.dataDirectory} 0755 root root -"
      "d ${cfg.dataDirectory}/library 0755 root root -"
      "d ${cfg.dataDirectory}/database 0755 postgres postgres -"
    ];

    # Copy the docker-compose.yaml file to /etc/immich/
    environment.etc."immich/docker-compose.yaml" = {
      source = ./docker-compose.yaml;
      mode = "0644";
    };

    # Create the .env file
    environment.etc."immich/.env" = {
      text = envFileContent;
      mode = "0600";
    };

    # Immich systemd service using docker-compose
    systemd.services.immich = {
      description = "Immich Photo Management";
      after = [ "docker.service" "network.target" ];
      wants = [ "docker.service" ];
      wantedBy = [ "multi-user.target" ];

      serviceConfig = {
        Type = "oneshot";
        RemainAfterExit = true;
        WorkingDirectory = "/etc/immich";
        TimeoutStartSec = "0";
      };

      script = ''
        # Start services using docker-compose
        ${pkgs.docker-compose}/bin/docker-compose up -d
      '';

      preStop = ''
        cd /etc/immich
        ${pkgs.docker-compose}/bin/docker-compose down
      '';

      restartTriggers = [
        config.environment.etc."immich/docker-compose.yaml".source
        config.environment.etc."immich/.env".source
      ];
    };
  };
}
