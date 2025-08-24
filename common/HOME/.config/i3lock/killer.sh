#!/usr/bin/env sh
set -euo pipefail

echo "suspending at $(date +%Y-%m-%d_%H:%M:%S)"
systemctl suspend
