{ config, pkgs, ... }:

{
  home.username = "zaryu";
  home.homeDirectory = "/home/zaryu";

  home.stateVersion = "24.11"; # Please read the comment before changing.


  home = {

    packages = with pkgs; [
      github-cli
      nerdfetch
  

      #Apps
      mpv
      github-desktop
      telegram-desktop

      #CLI/TUI
      yazi #file manager cli
      cmatrix

      #Hyprland
      pyprland

      #Office
      wpsoffice
      
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
