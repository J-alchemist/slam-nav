#!/bin/bash

#save1
#rosrun map_server map_saver -f cartomap

		
#cartographer save2
source ~/Desktop/slam+nav/devel/setup.bash
rosservice call /finish_trajectory 0
rosservice call /write_state "{filename: '${HOME}/Desktop/slam+nav/map/cartomap$1.pbstream'}"
rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=${HOME}/Desktop/slam+nav/map/cartomap$1 -pbstream_filename=${HOME}/Desktop/slam+nav/map/cartomap$1.pbstream -resolution=0.05


