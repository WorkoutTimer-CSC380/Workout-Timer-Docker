# Workout-Timer-Docker
A Containerized Workout Timer

## How to Run
- Clone this repo and cd into it
- run docker build . -t workout-timer:latest
- run docker run -dit -p 3001:3001 -p 3000:3000 --name WorkoutTimer workout-timer:latest
