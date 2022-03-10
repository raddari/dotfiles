# dotfiles
![license_badge](https://img.shields.io/github/license/raddari/dotfiles)

Here be me dotfiles

## Pre-reqs
- `fish` must be installed and set as the primary shell
- `git` must be installed

## Post install
- Set desired theme with `fish_config theme`
- Clone [packer.nvim](https://github.com/wbthomason/packer.nvim) for with:
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
- Then open neovim and run:
```
:PackerSync
```
