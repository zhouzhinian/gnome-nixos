{ inputs, config, pkgs, ... }:

{
 home.stateVersion = "25.05";
 programs.home-manager.enable = true;
  home.username = "zhinian";
  home.homeDirectory = "/home/zhinian";
  home.packages = with pkgs;[
 ];   
 			

 dconf.settings = {
   "org/virt-manager/virt-manager/connections" = {
     autoconnect = ["qemu:///system"];
     uris = ["qemu:///system"];
   };
  };
}
