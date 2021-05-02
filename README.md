 # Containerized Workout-Timer
 
 ## Things to do beforehand
 - Install [Docker](https://docs.docker.com/get-docker/)
 - Don't forget to add your user to the docker group $ gpasswd -a username docker
 - Install [Portainer](https://documentation.portainer.io/v2.0/deploy/ceinstalldocker/) for easy visual container management
 - Portainer is deployed on localhost:9000

## How to Run the WorkoutTimer
#### - Clone this repo and cd into it
#### - Execute the commands below

```bash
docker build . -t workout-timer:latest
docker run -dit --name WorkoutTimer --network=host workout-timer:latest
```

