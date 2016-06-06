#!/bin/bash

curl --include --request POST http://localhost:3000/symptoms \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "ted@zodiackiller.com",
      "password": "ted"
    }
  }'
