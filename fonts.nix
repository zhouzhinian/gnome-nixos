{ config, lib, pkgs, ... }:
 {
   # fonts
    i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_CN.UTF-8";
    LC_IDENTIFICATION = "zh_CN.UTF-8";
    LC_MEASUREMENT = "zh_CN.UTF-8";
    LC_MONETARY = "zh_CN.UTF-8";
    LC_NAME = "zh_CN.UTF-8";
    LC_NUMERIC = "zh_CN.UTF-8";
    LC_PAPER = "zh_CN.UTF-8";
    LC_TELEPHONE = "zh_CN.UTF-8";
    LC_TIME = "zh_CN.UTF-8";
  };
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.waylandFrontend = true;
    fcitx5.addons = with pkgs; [
    fcitx5-gtk             # alternatively, kdePackages.fcitx5-qt
    fcitx5-chinese-addons  # table input method support
    fcitx5-material-color	# a color theme
    fcitx5-rime
     ];
  };
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      wqy_zenhei # steam font
      # nerdfonts
      fira-code
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-emoji
      wqy_zenhei
      wqy_microhei
      meslo-lgs-nf
      source-code-pro
      iosevka 		    
      jetbrains-mono
];

  fontconfig = {
    defaultFonts = {
      serif = [
          "Noto Serif CJK SC"
        ];
        sansSerif = [
          "Noto Sans CJK SC"
        ];
        monospace = [
          "FiraCode Nerd Font"
        ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
  
}
