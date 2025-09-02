default:
    @scp -r * berlin:/home/berlin/nixos-config || echo "ssh berlin failed"
    @scp -r * nix:/home/max/nixos-config || echo "ssh nix failed"

laptop:
    sudo nixos-rebuild switch --flake .#laptop --impure

berlin:
    sudo nixos-rebuild switch --flake .#berlin --impure

berlin-test:
    sudo nixos-rebuild test --flake .#berlin --impure
