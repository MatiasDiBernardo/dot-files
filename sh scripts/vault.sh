#!/bin/zsh

# Entro a donde esta mi vault
cd  "/home/diber/Vault/Notardas"

# Traigo los cambios
git pull

# Por alguna razón tengo que volver a hacer CD a el directorio
cd  "/home/diber/Vault/Notardas"

# Abre neovim
nvim
