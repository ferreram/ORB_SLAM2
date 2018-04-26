#!/bin/bash

# Monocular ORB SLAM launcher

echo "What calibration file to use ?"

ls config/

read file

echo "Expecting images on ROS topic /camera/image_raw !"

rosrun ORB_SLAM2 Mono ../Vocabulary/ORBvoc.txt config/$file /camera/image_raw:=/cam0/image_raw
