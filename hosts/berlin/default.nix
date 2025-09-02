{ config, pkgs, lib, inputs, ... }:

let 
  modules = import ../../modules;
in
{
  imports = [
    /etc/nixos/hardware-configuration.nix
    modules.software
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";


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
  
  services.xserver.xkb = {
    layout = "us";
    variant = "";
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
      allowedTCPPorts = [ 22 ];
      trustedInterfaces = [ "tailscale0" ];
    };
  };

  # Services
  services.openssh.enable = true;

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

  # Custom enabled software
  services.tailscale.enable = true;

  software.docker.enable = true;
  # software.immich.enable = true;

}