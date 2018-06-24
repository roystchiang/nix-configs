{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    # Install via
    #  nix-env -iA nixpkgs.default-toolset

    vim-config = import ./vim-config {inherit pkgs; };

    default-toolset = pkgs.buildEnv {
      name = "default-toolset";
      paths = with pkgs; [
        git
        termite
	tmux
	cabal-install
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
	htop
      ];
    };

    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        vim-config
        default-toolset
        browsers
        random
      ];
    };
   };
}
