{ config, pkgs, ...}:
{
    services.xserver.enable = true;
    services.xserver.desktopManager.xfce.enable = true;
    services.xserver.autorun = true;

    services.xserver.videoDrivers = [ "nvidia" ];

    hardware.pulseaudio.enable = true;
    hardware.pulseaudio.support32Bit = true;
    sound.enable = true;
}
