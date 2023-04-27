#!/bin/bash

echo "Updating system files..."
sudo rsync -rv ./themes/sugar-dark /usr/share/sddm/themes

echo "Updating config files..."
sudo cp -v ./sddm.conf /usr/lib/sddm/sddm.conf.d/default.conf
