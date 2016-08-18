#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "blue@girl.com",
      "password": "vet123",
      "password_confirmation": "vet123"
    }
  }'
