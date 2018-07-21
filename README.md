Music Application Example
======
### Architecture
![alt text](https://i.imgur.com/BilszOh.png)
![alt text](https://i.imgur.com/zMOdQJz.png)
### Microservices API
|Microservice|Url|Request|Description|
|-------------|:------------- |:-----:|:-----------------------|
|Auth MS|/|GET|Checks if microservice is working|
||/login|POST|Create token if credentials are correct|
|Users MS|/|GET|Check if microservice is working|
||/login|POST|Check login credentials|
||/users|GET|Returns an user given an email|
||/users|POST|Creates user with given parameters|
||/users/{id}|DELETE|Deletes user
||/users/{id}|PUT|Updates user with given parameters|
|Playlists MS|/|GET|Checks if microservice is working|
||/playlists|GET|Get all playlists from a user|
||/playlists|POST|Creates playlist with given parameters|
||/playlists/{id}|GET|Retrieves a playlist|
||/playlists/{id}|DELETE|Deletes a playlist|
||/playlists/{id}|PUT|Updates playlist with given parameters|
||/playlists/songs/{id}|DELETE|Removes a song from a playlist|
||/playlists/songs/{id}|GET|Gets all songs from a playlist|
||/playlists/songs/{id}|POST|Adds a song into a playlist|
|Songs MS|/|GET|Checks if microservice is working|
||/songs|GET|Return a song given an id|
||/songs|POST|Creates a song|
||/songs/convert/{id}|GET|Converts a song from .mp3 to .wav|
||/songs/criteria|GET|Return a list of songs given an expression|
||/songs/{id}|DELETE|Deletes song|
||/songs/{id}|PUT|Updates song with given parameters|
|Aggregator MS|/|GET|Checks if microservice is working|
||/playlists/songs/{id}|GET|Returns all songs information associated with a playlist|
### Microservices Ports
|Microservice|Port|
|-------------|:-----:|
|Auth MS|5003|
|Users MS|5000|
|Playlists MS|5002|
|Songs MS|5001|
|Aggregator MS|5004|

How to use
======
### Prerequisites
- Docker ce
- Docker compose

### Running
Clone the repository, then go to inside the folder `music_ms`:
```
$ cd music_ms
```
Then run:
```
$ docker-compose up
```
The application is currently running. In order to access it you need to follow the next few steps:

Type the following in the command line in order to check the services names currently running:
```
$ docker-compose ps
```
Type the following to get the ip of a service:
```
$ docker inspect <service_name>
```
Get the value from the field `IPAddress`. Then in your browser you can check if a microservice is running by typing `<ip_address>:<port>`. The ports for each microservice can be found in the Microservices Ports section.
Type the following in the browser to get access to the swagger ui: `<ip_address>:<port>/ui`. Using this you can get access to detailed information about the microservices endpoints.

To shutdown the application run:
```
$ docker-compose down
```

This repository also contains a file called `music-example-yml` that uses this application in docker swarm mode with a nonintrusive monitoring microservice infrastructure detailed in: [https://github.com/fabiopina/monitoring_ms ](https://github.com/fabiopina/monitoring_ms )
