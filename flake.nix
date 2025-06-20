{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-stable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./hosts/laptop ];
    };
  };
}