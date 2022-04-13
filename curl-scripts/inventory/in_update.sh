#!/bin/bash
ID="62561acaf8a77bf4081e841c"
TOKEN="3b315a7728d07f4b7ca8c9fdb171db38"
NAME="Earings #2"
DESCRIPTION="silver green"
SIZE="small"
QUANTITY="2"

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
      "description": "'"${DESCRIPTION}"'",
      "size": "'"${SIZE}"'",
      "quantity": "'"${QUANTITY}"'"
    }
  }'

echo
