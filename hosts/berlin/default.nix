{ config, pkgs, lib, inputs, ... }:

let 
  modules = import ../../modules;
in
{
  imports = [
    /etc/nixos/hardware-configuration.nix
    modules.software
  ];

  software.docker.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";


  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };
  
  # Console configuration
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };  

  environment.systemPackages = with pkgs; [
    vim
    just
    git
    curl
    wget
    htop
    tailscale
  ];

  # Network configuration
  networking = {
    hostName = "berlin";
    networkmanager.enable = true;
    
    firewall = {
      enable = true;
      allowedTCPPorts = [ 
        22    # SSH
        2283  # Immich web interface
      ];

      trustedInterfaces = [ "tailscale0" ];
    };
  };

  # Services
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
    };
  };

  services.tailscale.enable = true;

  users.users.berlin = {
    isNormalUser = true;
    description = "Admin";
    extraGroups = [ "wheel" "docker" "networkmanager" ];
    home = "/home/berlin";
    createHome = true;
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMH/alT6XhbAS1vBgByibmUymuB8iSedTPH81pnwYfhQ m.gallup@student.vu.nl"
    ];
  };

  # Enable sudo for wheel group
  security.sudo.wheelNeedsPassword = false;

  # Automatic garbage collection
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };
}