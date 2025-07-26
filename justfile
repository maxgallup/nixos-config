default:
    scp -r * nix:/home/max/nixos-config

rebuild:
    sudo nixos-rebuild switch --flake .#laptop --impure

