{ pkgs }:

with pkgs; vim_configurable.customize {
  name = "vim";

  vimrcConfig.vam.knownPlugins = pkgs.vimPlugins;

  vimrcConfig.vam.pluginDictionaries = [
    # load always
    { names = [ "nerdtree" ]; }
  ];

  vimrcConfig.customRC = ''
    syntax on
    filetype on

    "NERDTree config
    map <silent> <F8> :NERDTreeToggle<CR>
    autocmd VimEnter * if !argc() | NERDTree | endif
  '';
}
