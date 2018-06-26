{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    # Install via
    #  nix-env -iA nixpkgs.default-toolset
    tmux-config = import ./tmux-config {inherit pkgs; };

    vim-config = import ./vim-config {inherit pkgs; };

    default-toolset = pkgs.buildEnv {
      name = "default-toolset";
      paths = with pkgs; [
        git
        termite
        cabal-install
        tmux
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
        tmux-config
        vim-config
        default-toolset
        browsers
        random
      ];
    };
   };
}
