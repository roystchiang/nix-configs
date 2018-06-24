with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";

  env = buildEnv { name = name; paths = buildInputs; };
  builder = builtins.toFile "builder.sh" ''
    source $stdenv/setup; ln -s $env $out
  '';

  _pytorch = with python36Packages; callPackage ./pytorch.nix {
    cudaSupport = true;
    cudatoolkit = cudatoolkit8;
    cudnn = cudnn_cudatoolkit8;
  };

  buildInputs = [
    (python36.buildEnv.override {
      ignoreCollisions = true;
      extraLibs = with python36Packages; [
	_pytorch
      ];

    })
  ];
}
