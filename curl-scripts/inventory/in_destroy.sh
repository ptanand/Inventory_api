#!/bin/bash
#  sh curl-scripts/inventory/in_destroy.sh

ID="6258571ede80b2560d9ad6a5"
TOKEN="6255da83c0b596e5a8d8ee6c"
API="http://localhost:4741"
URL_PATH="/inventory"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
