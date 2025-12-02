default:
    @rsync -avz . berlin:/home/berlin/nixos-config --exclude '.git'
    # @rsync -avz . nix:/home/max/nixos-config --exclude '.git'

laptop:
    sudo nixos-rebuild switch --flake .#laptop --impure

switch host:
    sudo nixos-rebuild switch --flake .#{{ host }} --impure

test host:
    sudo nixos-rebuild test --flake .#{{ host }} --impure
