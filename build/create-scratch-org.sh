# Get the private key from the environment variable
echo "Setting up DevHub Connection..."
mkdir keys
echo $SFDC_SERVER_KEY | base64 -d > keys/server.key

