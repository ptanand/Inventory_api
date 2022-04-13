#!/bin/sh

#   sh curl-scripts/inventory/in_show.sh 

TOKEN="3b315a7728d07f4b7ca8c9fdb171db38"
ID="62561acaf8a77bf4081e841c"
API="http://localhost:4741"
URL_PATH="/inventory"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo