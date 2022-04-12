#!/bin/bash

API="http://localhost:4741"
URL_PATH="/inventory"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "inventory": {
      "name": "'"${NAME}"'",
      "discription": "'"${DISCRIPTION}"'",
      "size": "'"${SIZE}"'",
      "quantity": "'"${QUANTITY}"'",
    }
  }'

echo
