#!/bin/bash
set -euo pipefail

sudo apt clean
sudo apt autoremove -y

rm -rf ~/.cache/thumbnails/* 2>/dev/null || true
rm -rf /tmp/* 2>/dev/null || true
rm -rf ~/.local/share/Trash* 2>/dev/null || true

sudo journalctl --vacuum-time=30d
sudo journalctl --vacuum-size=500M

echo "Готово!"
