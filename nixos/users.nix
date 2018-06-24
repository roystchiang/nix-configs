{ config, pkgs, ...}:
{
  users.users.roy = 
  { isNormalUser = true;
    home = "/home/roy";
    description = "Roy C";
    extraGroups = [ "wheel" "networkmanager" "audio" ];
  };
}
