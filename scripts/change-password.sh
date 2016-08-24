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


  curl --include --request PATCH http://localhost:3000/change-password/3 \
    --header "Authorization: Token token=907989684d82f586ad7c2e7c46557e5e" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "attempt123",
        "new": "test123"
      }
    }'

    curl --include --request POST http://localhost:3000/sign-up \
     --header "Content-Type: application/json" \
     --data '{
       "credentials": {
         "email": "pet@store.com",
         "password": "shelter",
         "password_confirmation": "shelter"
       }
     }'

curl --include --request POST http://localhost:3000/sign-in \
 --header "Content-Type: application/json" \
 --data '{
   "credentials": {
     "email": "pets@store.com",
     "password": "shelter"
   }
 }'

 curl --include --request PATCH http://localhost:3000/change-password/4 \
  --header "Authentication: Token token=37e43b216e7388c66657d2235589c0f6" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "shelter",
      "new": "clinic123"
    }
  }'

  5 | this@example.com | 84f537ccab5f4a18f60130b7d3f1a7e8


  curl --include --request PATCH http://localhost:3000/change-password/5 \
   --header "Authorization: Token token=84f537ccab5f4a18f60130b7d3f1a7e8" \
   --header "Content-Type: application/json" \
   --data '{
     "passwords": {
       "old": "example",
       "new": "finish"
     }
   }'

   d":6,"email":"pet@vet.com","token":"BAhJIiUxMmNkYTk0OWI5MzQ2ZmIwMTc1OWE1ODc1ZGExZTJlOAY6BkVG--d2c8d52ceb83312bbf8d6e56f379e941c8151722"
