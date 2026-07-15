#!/bin/zsh
# Double-click this file to start Dead Signal on this Mac.
# Friends on the same WiFi can join using the address the game prints.
cd "$(dirname "$0")"
echo "Starting Dead Signal..."
echo "(Tip: run with an Anthropic API key for live AI assistants.)"
python3 server.py
