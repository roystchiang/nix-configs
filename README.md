# nix-configs

Most of the code was stolen from https://github.com/kamilchm/.nixpkgs

for various dotfiles to work

```find $HOME/.nix-profile/userHome/ -maxdepth 1 | tail +2 | xargs -I {} ln -sf {} $HOME```
