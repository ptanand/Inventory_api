#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
TOKEN="52037074219eb45a705424a32bb4216f"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "change-passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo