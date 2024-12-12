#! /bin/sh

# This script will install the Make It So agent on your Linux machine.

echo "Installing Make It So agent on your machine..."
# Check if the user is on Linux
if [ "$(uname)" != "Linux" ]; then
    echo "This script is only supported on Linux."
    exit 1
fi

echo "Downloading Make It So agent..."
# Download the gzipped file directly from raw GitHub URL
curl -L -o mis.linux.x64.gz https://github.com/RamboRogers/mis/raw/refs/heads/master/mis.linux.x64.gz

# Gunzip the file
echo "Extracting Make It So agent..."
gunzip mis.linux.x64.gz
mv mis.linux.x64 mis
chmod +x mis

# Move the file to /usr/local/bin/mis
echo "Moving Make It So agent to /usr/local/bin/mis..."
sudo mv mis /usr/local/bin/mis

# Clean up
echo "Cleaning up..."
rm -f mis.linux.x64.gz

echo "Make It So agent installed successfully!"
echo "You can now use 'mis' command in your terminal!"
