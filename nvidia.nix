{ config, lib ,pkgs, ... }:


{
	services.xserver.videoDrivers = [ "nvidia" ];
	hardware.nvidia.open = false; 
}
