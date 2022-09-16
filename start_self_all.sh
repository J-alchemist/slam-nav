#!/bin/bash

source ~/Desktop/slam+nav/devel/setup.bash

roslaunch ./mylaunch/slam_and_movebase_navi.launch

#chmod 777 exploring_slam.py
bash ~/slam+nav/src/mbot_navigation/scripts/expoloring_slam.py
