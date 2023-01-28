#!/bin/bash -e

APP_ENV=${APP_ENV:-local}

echo "[`date`] Running entrypoint script in the '${APP_ENV}' environment..."

CONFIG_FILE=./config/${APP_ENV}.yml

echo "[`date`] Starting server..."
./server -config ${CONFIG_FILE} 
