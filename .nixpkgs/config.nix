{
  allowUnfree = true;
  packageOverrides = pkgs: rec {
    # Install via
    #  nix-env -iA nixpkgs.default-toolset
    default-toolset = pkgs.buildEnv {
      name = "default-toolset";
      paths = with pkgs; [
        vim
        git
      ];
    };
    browsers = pkgs.buildEnv {
      name = "browsers";
      paths = with pkgs; [
        firefox
      ];
    };
    random = pkgs.buildEnv {
      name = "random";
      paths = with pkgs; [
        screenfetch
        scrot
      ];
    };
   };
}
