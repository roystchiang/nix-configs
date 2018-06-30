{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    adapta-gtk-theme
    papirus-icon-theme
    dmenu
  ];

  services.xserver = {
    windowManager.xmonad = {
      enable = true ;
      enableContribAndExtras = true ;
      extraPackages = haskellPackages: [
        haskellPackages.xmonad-contrib
        haskellPackages.xmonad-extras
        haskellPackages.xmonad
        haskellPackages.xmobar
      ];
    };

    windowManager.default = "xmonad";
  };
}
