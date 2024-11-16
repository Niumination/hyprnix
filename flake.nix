{
  description = "Home Manager configuration of hyprzaryu";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # add arg
    #ags.url = "github:Aylur/ags/v1";

    # add hyprpanel
    #hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."hyprzaryu" = home-manager.lib.homeManagerConfiguration {
        #inherit pkgs;
        pkgs = import nixpkgs { inherit system; };

        extraSpecialArgs = { inherit inputs; };

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ 
          ./home.nix
          ./CyberApp/cyberapp.nix
          ./App/hyprpanel-flake.nix
          #{nixpkgs.overlays = [inputs.hyprpanel.overlay]}
          
        ];

      };
    };
}
