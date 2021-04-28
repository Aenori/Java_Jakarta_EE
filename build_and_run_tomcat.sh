#!/bin/bash
PORT="${1:-8080}"
docker build . -t jakartaee
docker run -p $PORT:8080 jakartaee