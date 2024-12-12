#! /bin/sh

# This script will install the Make It So agent on your machine.

echo "Installing Make It So agent on your machine..."
# Check if the user is on a Mac
if ! [[ $(uname) == "Darwin" ]]; then
    echo "This script is only supported on macOS."
    exit 1
fi

echo "Downloading Make It So agent..."
# Download https://github.com/RamboRogers/mis/blob/master/mis.darwin.zip
curl -L https://github.com/RamboRogers/mis/blob/master/mis.darwin.zip -o mis.zip

# Unzip the file
echo "Unzipping Make It So agent..."
unzip mis.zip
sudo chmod +x mis

# Move the file to /usr/local/bin/mis
echo "Moving Make It So agent to /usr/local/bin/mis..."
sudo mv mis /usr/local/bin/mis

# Remove the install script
echo "Removing install script..."
rm install_mis.sh

echo "Make It So agent installed successfully!"
