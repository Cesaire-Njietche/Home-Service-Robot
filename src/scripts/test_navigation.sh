#!/bin/sh
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch " &
sleep 5
xterm  -e  " roslaunch turtlebot_gazebo amcl_demo.launch initial_pose_a:=-1.57 " & 
sleep 5
xterm  -e  " roslaunch turtlebot_rviz_launchers view_navigation.launch"  

