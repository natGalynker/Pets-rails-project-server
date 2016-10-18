#!/bin/bash

  curl --include --request PATCH http://localhost:3000/change-password/3 \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "old example",
        "new": "new example"
      }
    }'
