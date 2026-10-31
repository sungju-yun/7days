#!/usr/bin/env bash
set -euo pipefail

export HERMES_HOME="/workspaces/.hermes"
export PATH="$HOME/.local/bin:$PATH"

if command -v hermes >/dev/null 2>&1 && hermes --version; then
  echo "Hermes is already available. Run: hermes setup"
  exit 0
fi

installer_file="$(mktemp)"
trap 'rm -f "$installer_file"' EXIT
curl --fail --show-error --silent --location \
  https://hermes-agent.nousresearch.com/install.sh \
  --output "$installer_file"
bash "$installer_file" --channel stable --non-interactive --skip-browser --skip-computer-use
hermes --version
echo "Hermes installed. Open a new terminal, run hermes setup, then hermes."
