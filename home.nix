{ config, pkgs, ... }:

{
  home.username = "zaryu";
  home.homeDirectory = "/home/zaryu";

  home.stateVersion = "24.05"; # Please read the comment before changing.


  home = {

    packages = with pkgs; [
      github-cli
      disfetch
      nerdfetch

      #Apps
      blanket
      mpv
      github-desktop

      #CLI/TUI
      yazi #file manager cli

      #Hyprland
      pyprland

    ];

  };

  nixpkgs.config.allowUnfree = true;

  home.file = {
    ".config/gh/config.yml".text = ''
        version: '1'
        aliases:
          as: auth status
    '';
  };

 
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
