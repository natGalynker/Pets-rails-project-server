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

curl --include --request POST http://localhost:3000/sign-up \
 --header "Content-Type: application/json" \
 --data '{
   "credentials": {
     "email": "once@again.com",
     "password": "last123",
     "password_confirmation": "last123"
   }
 }'


 curl --include --request POST http://localhost:3000/sign-in  --header "Content-Type: application/json"  --data '{
   "credentials": {
     "email": "tow@again.com",
     "password": "win123"
   }
 }'

 curl --include --request POST http://localhost:3000/sign-up \
   --header "Content-Type: application/json" \
   --data '{
     "credentials": {
       "email": "blue@girl.com",
       "password": "vet123"
     }
   }'
