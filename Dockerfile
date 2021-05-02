FROM node:latest
EXPOSE 3001
EXPOSE 3000
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install htop nano
WORKDIR /root
RUN git clone https://github.com/WorkoutTimer-CSC380/Workout-Timer
RUN ls -la
WORKDIR /root/Workout-Timer
RUN ls -la
RUN npm install -g npm@latest
RUN npm install
WORKDIR /root
RUN git clone https://github.com/WorkoutTimer-CSC380/Backend-Testing
WORKDIR Backend-Testing
RUN ls -la
RUN yarn install
WORKDIR /root
COPY run.sh /root
RUN chmod 755 run.sh
ENTRYPOINT ["/root/run.sh", ""]

