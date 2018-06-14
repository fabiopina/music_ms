#!/bin/bash

# Delete images
docker rmi fabiopina151/registerwitheureka_users-ms:0.1
docker rmi fabiopina151/registerwitheureka_songs-ms:0.1
docker rmi fabiopina151/registerwitheureka_playlists-ms:0.1
docker rmi fabiopina151/registerwitheureka_aggr-ms:0.1
docker rmi fabiopina151/registerwitheureka_auth-ms:0.1


# Aggregator
cd Aggregator_MS
docker build -t fabiopina151/registerwitheureka_aggr-ms:0.1 .
cd ..

# Authentication
cd Authentication_MS
docker build -t fabiopina151/registerwitheureka_auth-ms:0.1 .
cd ..

# Playlists
cd Playlists_MS
docker build -t fabiopina151/registerwitheureka_playlists-ms:0.1 .
cd ..

# Songs
cd Songs_MS
docker build -t fabiopina151/registerwitheureka_songs-ms:0.1 .
cd ..

# Users
cd Users_MS
docker build -t fabiopina151/registerwitheureka_users-ms:0.1 .
cd ..


# Upload images to docker hub
docker push fabiopina151/registerwitheureka_aggr-ms:0.1
docker push fabiopina151/registerwitheureka_auth-ms:0.1
docker push fabiopina151/registerwitheureka_playlists-ms:0.1
docker push fabiopina151/registerwitheureka_songs-ms:0.1
docker push fabiopina151/registerwitheureka_users-ms:0.1





