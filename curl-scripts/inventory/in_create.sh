#!/bin/bash

NAME="Earings #1"
DESCRIPTION="Gold green"
SIZE="small"
QUANTITY="6"
TOKEN="3b315a7728d07f4b7ca8c9fdb171db38"
API="http://localhost:4741"
URL_PATH="/inventory"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
