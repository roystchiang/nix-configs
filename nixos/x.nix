{ config, pkgs, ...}:
{
    services.xserver.enable = true;
    services.xserver.autorun = true;
    services.xserver.xrandrHeads = [ "DVI-D-0" "DVI-I-1" ];

    services.xserver.videoDrivers = [ "nvidia" ];

    hardware.pulseaudio.enable = true;
    hardware.pulseaudio.support32Bit = true;
    sound.enable = true;
}
