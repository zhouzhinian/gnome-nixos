{ inputs, config, pkgs, ... }:

{
 home.stateVersion = "24.11";
 programs.home-manager.enable = true;
  home.username = "zhinian";
  home.homeDirectory = "/home/zhinian";
  home.packages = with pkgs;[
    papirus-icon-theme
    vlc
    mint-cursor-themes
    subversion
 		dracula-icon-theme
   	dracula-theme
		qbittorrent-enhanced
		tokyonight-gtk-theme
		gruvbox-gtk-theme
		rose-pine-gtk-theme
		rose-pine-icon-theme
		qogir-icon-theme
		arc-icon-theme
		thunderbird
		obs-studio
		vscode
   ];   
 			

 dconf.settings = {
   "org/virt-manager/virt-manager/connections" = {
     autoconnect = ["qemu:///system"];
     uris = ["qemu:///system"];
   };
  };
}
