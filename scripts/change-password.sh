#!/bin/bash

  curl --include --request PATCH http://localhost:3000/change-password/$ID \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "vet123",
        "new": "change123"
      }
    }'
