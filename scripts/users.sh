#!/bin/bash

curl --include --request GET http://localhost:3000/users \
  --header "Authorization: Token token=$TOKEN"

curl --include request GET http://localhost:3000/users/3 \
  --header "Authorization: Token token=BAhJIiU4NGY1MzdjY2FiNWY0YTE4ZjYwMTMwYjdkM2YxYTdlOAY6BkVG--64e4515b61b5c51ba93bf4a3e192aa1b1d9a30fc" 
