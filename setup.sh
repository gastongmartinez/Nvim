#!/usr/bin/env bash

nvim -c "PackerSync"

pip install black 'python-lsp-server[all]' pyright

cargo install stylua

sudo npm i -g neovim prettier bash-language-server vscode-langservers-extracted emmet-ls typescript typescript-language-server yaml-language-server live-server markdownlint markdownlint-cli

read -rp "Corregir plenary? (S/N): " PL
if [ "$PL" == 'S' ]; then
    ln -sf ~/.local/share/nvim/site/pack/packer/start/plenary.nvim/lua/plenary ~/.config/nvim/lua/plenary
    ln -sf ~/.local/share/nvim/site/pack/packer/start/plenary.nvim/lua/plenary/vararg/init.lua ~/.local/share/nvim/site/pack/packer/start/plenary.nvim/lua/plenary/vararg.lua
fi
