cmake_minimum_required(VERSION 2.8.3)
project(robotformations)


find_package(catkin REQUIRED COMPONENTS
  nav_msgs
  roscpp
  rospy
  std_msgs
  tf
)

catkin_package(CATKIN_DEPENDS roscpp rospy std_msgs)


include_directories(${catkin_INCLUDE_DIRS})


add_executable(rf_node_column_sim src/rf_node_column_sim.cpp)
add_executable(rf_node_oblique_sim src/rf_node_oblique_sim.cpp)
add_executable(rf_node_column_simCamera src/rf_node_column_simCamera.cpp)
add_executable(rf_node_oblique_simCamera src/rf_node_oblique_simCamera.cpp)
#add_executable(rf_node_column_follower src/rf_node_column_follower.cpp)
#add_executable(rf_node_oblique_follower src/rf_node_oblique_follower.cpp)
add_executable(rf_node_switch_column2oblique_simCamera src/rf_node_switch_column2oblique_simCamera.cpp)
#add_executable(rf_node_switch_column2oblique_follower src/rf_node_switch_column2oblique_follower.cpp)

target_link_libraries(rf_node_column_sim ${catkin_LIBRARIES})
target_link_libraries(rf_node_oblique_sim ${catkin_LIBRARIES})
target_link_libraries(rf_node_column_simCamera ${catkin_LIBRARIES})
target_link_libraries(rf_node_oblique_simCamera ${catkin_LIBRARIES})
#target_link_libraries(rf_node_column_follower ${catkin_LIBRARIES})
#target_link_libraries(rf_node_oblique_follower ${catkin_LIBRARIES})
target_link_libraries(rf_node_switch_column2oblique_simCamera ${catkin_LIBRARIES})
#target_link_libraries(rf_node_switch_column2oblique_follower ${catkin_LIBRARIES})
