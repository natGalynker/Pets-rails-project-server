#!/bin/bash


  curl --include --request POST http://localhost:3000/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "blue@girl.com",
        "password": "vet123"
      }
    }'
    --header "Content-Type: application/json" \
   >   --data '{
   >     "credentials": {
   >       "email": "blue@girl.com",
   >       "password": "vet123",

    curl --include --request POST http://localhost:3000/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "pet@store.com",
        "password": "shelter"
      }
    }'


curl --include --request POST http://localhost:3000/sign-in \
 --header "Content-Type: application/json" \
 --data '{
   "credentials": {
     "email": "this@example.com",
     "password": "example"
   }
 }'

 5 | this@example.com | 84f537ccab5f4a18f60130b7d3f1a7e8

 curl --include --request POST http://localhost:3000/sign-in  --header "Content-Type: application/json"  --data '{
   "credentials": {
     "email": "again@example.com",
     "password": "working"
   }
 }'

 curl --include --request POST http://localhost:3000/sign-in  --header "Content-Type: application/json"  --data '{
   "credentials": {
     "email": "pet@test.com",
     "password": "test123"                                                                                                                                                               "password_confirmation": "test123"                                                                                                                                              }
 }'

 curl --include --request POST http://localhost:3000/sign-in \
   --header "Content-Type: application/json" \
   --data '{
     "credentials": {
       "email": "pet@test.com",
       "password": "test123"
     }
 }'
