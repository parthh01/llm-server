#!/bin/bash

curl http://ollama:11434/api/pull -d '{
  "name": "phi"
}'
