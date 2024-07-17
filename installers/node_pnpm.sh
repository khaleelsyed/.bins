#!/bin/bash

# Installs fnm (Fast Node Manager)
if ! curl -fsSL https://fnm.vercel.app/install | bash; then
  exit 1;
fi

FNM_PATH="/home/khaleel/.local/share/fnm"
export PATH="$FNM_PATH:$PATH"
eval "`fnm env`"

# Download and install Node.js (latest LTS version)
if ! fnm install --lts; then
  echo "Failed to install Node.js"
  exit 1;
fi

# Install pnpm
if curl -fsSL https://get.pnpm.io/install.sh | sh -; then
  exit 0;
else
  echo "Failed to install pnpm"
  exit 1;
fi

exit 0;
