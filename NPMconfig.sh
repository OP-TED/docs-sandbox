Echo

echo "-------------------------------------------------------------------------"

echo "SETUP NPM PROXY"

npm --version

RESULT=$?

if [[ $RESULT -ne 0 ]]; then

  echo "npm is not available!"

  exit 1

fi

EFORMS_PROXY_URL=http://<username>:<password>J@proxy-t2-lu.welcome.ec.europa.eu:8012

if [[ -z "${EFORMS_PROXY_URL}" ]]; then

  echo "Expecting environment variable: EFORMS_PROXY_URL !"

  exit 1

fi

npm config delete proxy

npm config set proxy $EFORMS_PROXY_URL

#npm config get proxy

npm config delete https-proxy

npm config set https-proxy $EFORMS_PROXY_URL

#npm config get https-proxy