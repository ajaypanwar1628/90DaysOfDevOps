#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run as root"
  exit 1
fi

packages=("nginx" "curl" "wget")

for pkg in "${packages[@]}"
do
  if dpkg -s $pkg &> /dev/null; then
    echo "$pkg already installed"
  else
    echo "Installing $pkg..."
    apt-get install -y $pkg
  fi
done



