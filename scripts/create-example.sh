curl --include --request POST http://localhost:3000/examples \
  --header "Content-Type: application/json" \
  --data '{
    "example": {
      "text": "example"
    }
  }'

  curl --include --request POST http://localhost:3000/examples \
    --header "Content-Type: application/json" \
    --data '{
      "example": {
        "text": "example"
      }
    }'
  curl --include request POST --header http://localhost/300/pets \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUxMmNkYTk0OWI5MzQ2ZmIwMTc1OWE1ODc1ZGExZTJlOAY6BkVG--d2c8d52ceb83312bbf8d6e56f379e941c8151722"
    --data '{
      "pet": {
        "name": "Minx",
        "breed": "medium black cat",
        "gender": "f"
    }
  }'

  curl --include request POST --header http://localhost/300/pets \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUxMmNkYTk0OWI5MzQ2ZmIwMTc1OWE1ODc1ZGExZTJlOAY6BkVG--d2c8d52ceb83312bbf8d6e56f379e941c8151722"
    --data '{
      "pet": {
        "name": "Minx",
        "breed": "medium black cat",
        "gender": "f"
    }
  }'
curl --request POST header "Authorization: Token token=BAhJIiUxMmNkYTk0OWI5MzQ2ZmIwMTc1OWE1ODc1ZGExZTJlOAY6BkVG--d2c8d52ceb83312bbf8d6e56f379e941c8151722"
     --header "Content-Type: application/json"
     -d '{
  "pet": {
    "name": "Minx",
    "breed": "cat",
    "gender": "f"
  }
}'
curl --request POST header "Authorization: Token token=BAhJIiUxMmNkYTk0OWI5MzQ2ZmIwMTc1OWE1ODc1ZGExZTJlOAY6BkVG--d2c8d52ceb83312bbf8d6e56f379e941c8151722"
     --header "Content-Type: application/json"
     -d '{
  "pet": {
    "name": "Minx",
    "breed": "cat",
    "gender": "f"
  }
}'
curl --request POST header "Authorization: Token token=BAhJIiUxMmNkYTk0OWI5MzQ2ZmIwMTc1OWE1ODc1ZGExZTJlOAY6BkVG--d2c8d52ceb83312bbf8d6e56f379e941c8151722"
     --header "Content-Type: application/json"
     -d '{
  "pet": {
    "name": "Minx",
    "breed": "cat",
    "gender": "f"
  }
}'
curl --request POST http://localhost:3000/pets \
  --header "Authorization: Token token=BAhJIiUxNzFlNDU0MzJiZTA3MTg5MjQ0NDZhZGRmZWFlNzYyNAY6BkVG--ae0a64f8734cd24c3ed00dcb97f89ae98e8df46a" \
  --header "Content-Type: application/json" \
  --data '{
    "pet": {
     "name": "example",
     "breed": "animal",
     "born_on": "2016-09-01",
     "gender": "m"
    }
  }'
