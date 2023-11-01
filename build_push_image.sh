#!/bin/bash

# Membuat Docker image
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image
docker tag item-app:v1 fuaddi/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login --username fuaddi --password-stdin

# Mengunggah image ke Docker Hub
docker push fuaddi/item-app:v1
