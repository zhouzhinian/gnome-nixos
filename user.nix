{ inputs, config, lib, pkgs, ... }: {
 nix.settings = {
	substituters = [ "https://mirrors.cernet.edu.cn/nix-channels/store"];
	experimental-features = [ "nix-command" "flakes" ];
	};
   environment.systemPackages = with pkgs; [
   	git wget ripgrep jq yq-go eza fzf which file gnused zstd gnupg aria2 
	tree zip xz unzip p7zip	clash-verge-rev sublime4
	ollama rustup ghostty fastfetch yesplaymusic	
	inputs.yazi.packages.${pkgs.system}.default
	inputs.zen-browser.packages."${system}".default
  ];
    programs.zsh.enable = true;
   users.defaultUserShell = pkgs.zsh;
   
 ## 虚拟机
	programs.virt-manager.enable = true;
	virtualisation.libvirtd.enable = true;
	virtualisation.spiceUSBRedirection.enable = true;
 ## Flatpak
 services.flatpak.enable = true;  
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  xdg.portal.config.common.default = "gtk";
   
#   programs.clash-verge.package = "clash-verge-rev";
   programs.clash-verge.autoStart = true;	
#   programs.clash-verge.enable = true;		
   services.ollama.enable = true;




# sublime4
  nixpkgs.config.permittedInsecurePackages = ["openssl-1.1.1w" ];






}
