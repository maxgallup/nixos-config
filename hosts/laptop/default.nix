{ lib, config, pkgs, ... }:

{
  # We use the hardware configuration that comes with the device, instead 
  # of declaring specific hardware configurations for each device.
  imports = [
    /etc/nixos/hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";


  # Boot configuration
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;


  # System settings
  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "en_US.UTF-8";

  # Change these to british?
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

  # Network configuration
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  # Dektop environment
  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  # Enable SSH
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = true;
      PermitRootLogin = "yes";
    };
  };
  networking.firewall.allowedTCPPorts = [ 22 ];


  # Audio
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # User configuration
  users.users.max = {
    isNormalUser = true;
    description = "Max";
    extraGroups = [ "networkmanager" "wheel" ];
    home = "/home/max";
    createHome = true;
  };

  # System packages
  environment.systemPackages = with pkgs; [
    vim
    git
    brave
    just

    rustc
    cargo
    rustfmt
    clippy

    dconf2nix
    dconf-editor

    gnome-tweaks
    gnome-extension-manager
    gnomeExtensions.dash-to-panel
    gnomeExtensions.pop-shell
  ];


  # GNOME customizations
  services.gnome = {
    core-apps.enable = true;
    games.enable = false; # Disable GNOME games
  };

  
}