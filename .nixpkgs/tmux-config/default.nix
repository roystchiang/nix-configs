{ pkgs }:

pkgs.stdenv.mkDerivation {
  name = "tmux-config";

  phases = [ "installPhase" ];

  src = ./.;

  installPhase = ''
  install -dm 755 $out/userHome
  cp -dr --no-preserve='ownership' $src/tmux.conf $out/userHome/.tmux.conf
  '';

}
