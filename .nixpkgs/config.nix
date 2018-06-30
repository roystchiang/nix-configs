{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    # Install via
    #  nix-env -iA nixpkgs.default-toolset
    tmux-config = import ./tmux-config {inherit pkgs; };

    vim-config = import ./vim-config {inherit pkgs; };

    xmonad-config = import ./xmonad-config {inherit pkgs; };

    default-toolset = pkgs.buildEnv {
      name = "default-toolset";
      paths = with pkgs; [
        git
        termite
        tmux
      ];
    };

    xmonad = pkgs.buildEnv {
      name = "xmonad";
      paths = with pkgs; [
        haskellPackages.xmonad
        haskellPackages.xmonad-extras
        haskellPackages.xmonad-contrib
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
        feh
      ];
    };

    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        tmux-config
        vim-config
        xmonad-config
        default-toolset
        xmonad
        haskellPackages.xmobar
        browsers
        random
      ];
    };
   };
}
