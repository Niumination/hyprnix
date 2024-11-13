{ config, pkgs, ... }:

{
  home.packages = [
    #Wireless Attacking
    pkgs.aircrack-ng
    pkgs.wifite2   
  ];

}
