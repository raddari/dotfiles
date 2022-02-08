# dotfiles
Here be me dotfiles

## Pre-reqs
- `fish` must be installed and set as the primary shell
- `git` must be installed

## Post install
- Set desired theme with `fish_config theme`
- Clone packer for neovim with:
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
- Then open neovim and run:
```
:PackerSync
```
