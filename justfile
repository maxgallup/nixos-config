default:
    @scp -r * berlin:/home/berlin/nixos-config || echo "ssh berlin failed"
    @scp -r * nix:/home/max/nixos-config || echo "ssh nix failed"

laptop:
    sudo nixos-rebuild switch --flake .#laptop --impure

switch host:
    sudo nixos-rebuild switch --flake .#{{host}} --impure

test host:
    sudo nixos-rebuild test --flake .#{{host}} --impure
