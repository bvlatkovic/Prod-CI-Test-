# Get the private key from the environment variable
echo "Setting up ScratchOrg Connection..."
mkdir keys
echo $SFDC_SERVER_KEY | base64 -d > keys/server.key

# Authenticate to an existing scratch org
echo "Authenticating..."
sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile keys/server.key --username $SFDC_SCRATCH_USER --instanceurl https://test.salesforce.com
