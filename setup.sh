#!/usr/bin/env bash

nvim -c "PackerSync"

pip install black 'python-lsp-server[all]'

cargo install stylua

sudo npm i -g prettier bash-language-server vscode-langservers-extracted emmet-ls typescript typescript-language-server yaml-language-server


