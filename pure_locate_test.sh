#!/bin/bash

source ~/Desktop/slam+nav/devel/setup.bash

#建图
#roslaunch cartographer_ros offline_backpack_2d.launch bag_filenames:=${HOME}/slam+nav/data/pure_localization/createMap.bag

#定位
#roslaunch cartographer_ros my_demo_backpack_2d_localization.launch 


#roslaunch cartographer_ros my_demo_backpack_2d_localization.launch load_state_filename:=${HOME}/slam+nav/data/pure_localization/createMap.bag.pbstream bag_filename:=${HOME}/slam+nav/data/pure_localization/locate.bag


roslaunch ./mylaunch/carto_loadMap_and_nav.launch 



