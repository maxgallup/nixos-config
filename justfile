_default:
    @just --list

sync:
    @rsync -avz . berlin:/home/berlin/nixos-config --exclude '.git' --delete
    # @rsync -avz . nix:/home/max/nixos-config --exclude '.git'

switch host:
    sudo nixos-rebuild switch --flake .#{{ host }} --impure

test host:
    sudo nixos-rebuild test --flake .#{{ host }} --impure
