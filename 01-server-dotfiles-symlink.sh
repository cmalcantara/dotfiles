#!/bin/bash

set -e

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run as root."
    exit 1
fi

echo "🔧 Updating package lists..."
apt update

echo "📦 Installing packages..."
apt install -y zsh neovim ranger openssh-server tmux

chsh -s /bin/zsh

# Assuming script is in the same directory as the config files
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
USER_HOME="/root" # You can change this to another user's home dir if needed

echo "🔗 Creating symlinks for config files..."

# Symlink .zshrc and .tmux.conf
ln -sf "$SCRIPT_DIR/.zshrc" "$USER_HOME/.zshrc"
ln -sf "$SCRIPT_DIR/.tmux.conf" "$USER_HOME/.tmux.conf"

# Ensure .config directory exists
mkdir -p "$USER_HOME/.config"

# Symlink Neovim and Ranger configs
ln -sfn "$SCRIPT_DIR/.config/nvim" "$USER_HOME/.config/nvim"
ln -sfn "$SCRIPT_DIR/.config/ranger" "$USER_HOME/.config/ranger"

# Change permissions if installing for root
chown -R root:root "$USER_HOME"

echo "🔒 Modifying SSH config to permit root login..."
SSHD_CONFIG="/etc/ssh/sshd_config"
if grep -q "^#*PermitRootLogin" "$SSHD_CONFIG"; then
    sed -i 's/^#*PermitRootLogin.*/PermitRootLogin yes/' "$SSHD_CONFIG"
else
    echo "PermitRootLogin yes" >>"$SSHD_CONFIG"
fi

echo "🔁 Restarting SSH service..."
systemctl restart ssh

echo "✅ Setup complete."
