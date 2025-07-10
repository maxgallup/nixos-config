{
  description = "Nix-OS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfigurations = {
        laptop = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/laptop
            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.max = ./home-manager/default.nix;
            }
            
            # Make the config available to home-manager
            ({ config, ... }: {
              home-manager.extraSpecialArgs = {
                inherit inputs;
                gnomeEnabled = config.gnome.enable;
              };
            })
          ];
        };
      };
  };
}