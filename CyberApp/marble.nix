{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    marble = {
      url = "github:marble-shell/shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, marble }: let
    system = "x86_64-linux";
  in {
    packages.${system}.default = marble.packages.${system}.default;
  };
}
