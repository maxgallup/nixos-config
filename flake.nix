{
  description = "Nix-OS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfigurations = {
        berlin = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/berlin
          ];
        };
      };
  };
}
