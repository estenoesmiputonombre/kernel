#!/bin/bash

# To list all packages installed on the system, from a terminal promtp type:
dpkg -l

# Do you want to loop for one in specific?
dpkg -l | grep apache2

# To list the files installed by a package name:
dpkg -L apache2

# If you are not sure which package installed a file:
dpkg -S /var/www

# Install a local .deb file by entering:
sudo dpkg -i package.deb

# Uninstall a package:
sudo dpkg -r package.deb # Take care of this way of uninstalling packages, because it only uninstall the proper package
			 # but not the dependencies
