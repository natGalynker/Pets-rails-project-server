#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.com",
      "password": "example password",
      "password_confirmation": "example password"
    }
  }'
