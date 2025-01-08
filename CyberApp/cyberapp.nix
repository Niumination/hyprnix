{ config, pkgs, ... }:

{
  home = {
  
    packages = with pkgs; [
        #Wireless Attacking
        aircrack-ng
        wifite2
        nmap
        wireshark
    ];
  
  };
}
