#!/bin/bash
#    sh curl-scripts/auth_inventory/in_signout.sh 

TOKEN="6c41853939a116d65703b46c7fb5e246"
API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
