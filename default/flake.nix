{
  description = "NixOS Config Flake";

  inputs = {
    # NixPkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    #home-manager.url = "github:nix-community/home-manager/release-23.11";
    #home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs: {
    nixosConfigurations = {
      # Replace "Default" with your hostname #
      default = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [./configuration.nix];
      };
    };
  };
}
