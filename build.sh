#!/bin/bash

# Delete images
docker rmi fabiopina151/users-ms:latest
docker rmi fabiopina151/songs-ms:latest
docker rmi fabiopina151/playlists-ms:latest
docker rmi fabiopina151/aggr-ms:latest
docker rmi fabiopina151/auth-ms:latest


# Aggregator
cd Aggregator_MS
docker build -t fabiopina151/aggr-ms:latest .
cd ..

# Authentication
cd Authentication_MS
docker build -t fabiopina151/auth-ms:latest .
cd ..

# Playlists
cd Playlists_MS
docker build -t fabiopina151/playlists-ms:latest .
cd ..

# Songs
cd Songs_MS
docker build -t fabiopina151/songs-ms:latest .
cd ..

# Users
cd Users_MS
docker build -t fabiopina151/users-ms:latest .
cd ..


# Upload images to docker hub
docker push fabiopina151/aggr-ms:latest
docker push fabiopina151/auth-ms:latest
docker push fabiopina151/playlists-ms:latest
docker push fabiopina151/songs-ms:latest
docker push fabiopina151/users-ms:latest





