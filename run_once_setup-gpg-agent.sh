#!/bin/bash
set -euo pipefail

if ! command -v gpgconf >/dev/null 2>&1; then
  echo "gpgconf not found, skipping gpg-agent restart."
  exit 0
fi

echo "Restarting gpg-agent to pick up new configuration..."
gpgconf --kill gpg-agent 2>/dev/null || true
gpgconf --launch gpg-agent
echo "gpg-agent restarted."
