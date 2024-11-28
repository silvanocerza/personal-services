#!/bin/bash
set -e
COMPOSE_FILE=$1
docker compose -f $COMPOSE_FILE down