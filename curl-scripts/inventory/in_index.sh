#!/bin/sh

#  sh curl-scripts/inventory/in_index.sh 

TOKEN="3b315a7728d07f4b7ca8c9fdb171db38"
API="http://localhost:4741"
URL_PATH="/inventory"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo