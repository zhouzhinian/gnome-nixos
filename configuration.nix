# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ lib, inputs, config, pkgs, ... }: {
  imports =
    [ # Include the results of the hardware scan.
	./hardware-configuration.nix
	./nano.nix
	./fonts.nix
	./clean.nix
	./user.nix
	./gnome.nix  
	./nvim.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  networking.hostName = "nixos"; # Define your hostname.
 
  system.stateVersion = "25.05"; # Did you read the comment?
    # 变量
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  # Select internationalisation properties.
  i18n.defaultLocale = "zh_CN.UTF-8";
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "cn";
    variant = "";
  };

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;

  };
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.zhinian = {
    isNormalUser = true;
    description = "zhinian";
    extraGroups = [ "networkmanager" "wheel" ];
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  # started in user sessions.
   programs.mtr.enable = true;
   programs.gnupg.agent = {
    enable = true;
     enableSSHSupport = true;
   };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

}
