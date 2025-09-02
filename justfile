default:
    @scp -r * nix:/home/max/nixos-config || echo "ssh nix failed"
    @scp -r * vm-berlin:/home/berlin/nixos-config || echo "ssh berlin failed"

laptop:
    sudo nixos-rebuild switch --flake .#laptop --impure

berlin:
    sudo nixos-rebuild switch --flake .#berlin --impure
