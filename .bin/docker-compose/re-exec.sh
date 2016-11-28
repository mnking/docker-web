#!/usr/bin/env bash

docker-compose down

docker-compose up -d

docker exec -it docker-web bash
