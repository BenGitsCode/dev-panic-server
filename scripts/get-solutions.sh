#!/bin/bash

curl --include --request POST http://localhost:3000/get-solutions \
  --header "Content-Type: application/json" \
  --data '{
    "symptoms": {
      "title": "I have Imposter Syndrome"
    }
  }'
