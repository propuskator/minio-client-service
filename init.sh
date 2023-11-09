#!/bin/sh

mc alias set minio "http://${MINIO_HOST}:${MINIO_PORT}" "$MINIO_ROOT_USER" "$MINIO_ROOT_PASSWORD"
mc mb -p "minio/$MINIO_BUCKET"
mc policy set public "minio/${MINIO_BUCKET}/cameras"