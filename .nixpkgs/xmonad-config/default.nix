{ pkgs }:

pkgs.stdenv.mkDerivation {
  name = "xmonad-config";

  phases = [ "installPhase" ];

  src = ./.;

  installPhase = ''
  install -dm 755 $out/userHome/.xmonad/
  cp -dr --no-preserve='ownership' $src/xmonad.hs $out/userHome/.xmonad/xmonad.hs
  '';

}
