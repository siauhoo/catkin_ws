cmake_minimum_required(VERSION 3.0.2)
project(conv)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

## Declare ROS messages and services
## Generate services in the 'srv' folder
add_service_files(
   FILES
   conv.srv
)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(conv_core src/conv_core.cpp)
target_link_libraries(conv_core ${catkin_LIBRARIES})
add_dependencies(conv_core conv_generate_messages_cpp)

add_executable(conv_test src/conv_test.cpp)
target_link_libraries(conv_test ${catkin_LIBRARIES})
add_dependencies(conv_test conv_generate_messages_cpp)
