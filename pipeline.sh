#!/bin/bash
echo ">>> Checking installed version of IBM Cloud CLI…"
bx --version
echo ">>> Logging into IBM Cloud…"
bx login --apikey $DEPLOYER_API_KEY -a api.ng.bluemix.net -o "$ORG" -s "$SPACE"
ibmcloud wsk property get --auth
echo ">>> Install serverless"
npm install
npm install serverless
echo ">> serverless version"
npx serverless -v
echo ">>> Deploy function"
npx serverless deploy