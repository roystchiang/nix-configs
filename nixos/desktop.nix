{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    adapta-gtk-theme
    papirus-icon-theme
  ];
}
