{ pkgs }:

with pkgs; neovim.override {
  vimAlias = true;
  configure = {
    customRC = ''
      syntax on
      filetype on
    '';
  };
}
