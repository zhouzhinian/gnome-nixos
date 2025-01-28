{
  config,
  lib,
  pkgs,
  ...
}:
{


services.xserver = {
  enable = true;
  displayManager.gdm.enable = true;
  desktopManager.gnome.enable = true;
};
services.udev.packages = with pkgs; [ gnome-settings-daemon ];
programs.dconf.enable = true;
services.gnome.core-utilities.enable = false;
environment.systemPackages = with pkgs; [
	gnomeExtensions.clipboard-indicator
	gnomeExtensions.logo-menu
	gnomeExtensions.kimpanel
	gnomeExtensions.appindicator
	gnomeExtensions.user-themes
	gnomeExtensions.dash-to-dock
	gnomeExtensions.blur-my-shell
	gnomeExtensions.lock-keys
	gnomeExtensions.just-perfection
	gnomeExtensions.forge
	gnomeExtensions.hide-top-bar
	gnome-tweaks
	gnome-menus
        nautilus
        file-roller
        gnome-disk-utility
        gnome-shell-extensions
	adwaita-icon-theme
	gnome-backgrounds
        gnome-color-manager
        gnome-control-center
        gnome-shell-extensions
        gnome-menus
        gtk3.out # for gtk-launch program
        xdg-user-dirs # Update user dirs as described in https://freedesktop.org/wiki/Software/xdg-user-dirs/
        xdg-user-dirs-gtk # Used to create the default bookmarks
        gnome-text-editor
    	gnome-calculator
    	gnome-calendar
    #gnome-characters
    # gnome-clocks
    #    gnome-console
   # gnome-contacts
       gnome-font-viewer
   # gnome-logs
   # gnome-maps
    #gnome-music
       gnome-system-monitor
    #gnome-weather
    	 loupe
    #gnome-connections
    #simple-scan
    #totem
    # 	gnome-software
   ];

  }
	


