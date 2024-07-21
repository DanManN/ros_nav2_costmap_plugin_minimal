#!/usr/bin/env bash
source /opt/ros/humble/setup.bash # source ROS2 humble
source ./install/setup.bash # source the current workspace

# export directories of the turtlebot3 name and model
export TURTLEBOT3_MODEL=waffle
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models

# launch the simulation
ros2 launch my_nav2_bringup tb3_simulation_launch.py headless:=True
