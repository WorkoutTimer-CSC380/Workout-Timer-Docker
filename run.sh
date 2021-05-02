#!/bin/bash

cd Backend-Testing/
nohup yarn start &
sleep 1
cd ..
cd Workout-Timer/
nohup npm start run &
cd ..
tail -f Backend-Testing/nohup.out
