{
  description = "NixOS Config Flake";

  inputs = {
    # NixPkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
#    home-manager.url = "github:nix-community/home-manager";
#    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
    # Replace "Default" with your hostname
    default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [./configuration.nix];
      };
    };
  };
}
