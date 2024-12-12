#! /bin/sh

# This script will install the Make It So agent on your machine.

echo "Installing Make It So agent on your machine..."
# Check if the user is on a Mac
if ! [[ $(uname) == "Darwin" ]]; then
    echo "This script is only supported on macOS."
    exit 1
fi

echo "Downloading Make It So agent..."
# Download the zip file directly from raw GitHub URL
curl -L -o mis.darwin.zip https://raw.githubusercontent.com/RamboRogers/mis/master/mis.darwin.zip

# Unzip the file
echo "Unzipping Make It So agent..."
unzip mis.darwin.zip
sudo chmod +x mis

# Move the file to /usr/local/bin/mis
echo "Moving Make It So agent to /usr/local/bin/mis..."
sudo mv mis /usr/local/bin/mis

# Remove quarantine attribute
echo "Removing quarantine attribute..."
sudo xattr -d com.apple.quarantine /usr/local/bin/mis

# Clean up
echo "Cleaning up..."
rm mis.darwin.zip

echo "Make It So agent installed successfully!"
echo "You can now use 'mis' command in your terminal!"
