#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
curl --include --request DELETE http://localhost:3000/sign-out/6 \
  --header "Authorization: Token token=BAhJIiUxMmNkYTk0OWI5MzQ2ZmIwMTc1OWE1ODc1ZGExZTJlOAY6BkVG--d2c8d52ceb83312bbf8d6e56f379e941c8151722" \
  
