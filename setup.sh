#!/usr/bin/env bash

nvim -c "PackerSync"

pip install black 'python-lsp-server[all]' pyright yamllint autopep8

cargo install stylua

sudo npm i -g neovim prettier bash-language-server vscode-langservers-extracted emmet-ls typescript typescript-language-server yaml-language-server live-server markdownlint markdownlint-cli

