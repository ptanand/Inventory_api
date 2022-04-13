#!/bin/bash
#  sh curl-scripts/auth_inventory/in_change-password.sh

OLDPW="1234"
NEWPW="12345"

API="http://localhost:4741"
URL_PATH="/change-password"
TOKEN="6c41853939a116d65703b46c7fb5e246"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo