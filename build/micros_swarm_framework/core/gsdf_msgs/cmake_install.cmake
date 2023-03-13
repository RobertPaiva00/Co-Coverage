# Install script for directory: /home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/roberto/COverage_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gsdf_msgs/msg" TYPE FILE FILES
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg"
    "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gsdf_msgs/cmake" TYPE FILE FILES "/home/roberto/COverage_ws/build/micros_swarm_framework/core/gsdf_msgs/catkin_generated/installspace/gsdf_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/roberto/COverage_ws/devel/include/gsdf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/roberto/COverage_ws/devel/share/roseus/ros/gsdf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/roberto/COverage_ws/devel/share/common-lisp/ros/gsdf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/roberto/COverage_ws/devel/share/gennodejs/ros/gsdf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/roberto/COverage_ws/devel/lib/python3/dist-packages/gsdf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/roberto/COverage_ws/devel/lib/python3/dist-packages/gsdf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/roberto/COverage_ws/build/micros_swarm_framework/core/gsdf_msgs/catkin_generated/installspace/gsdf_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gsdf_msgs/cmake" TYPE FILE FILES "/home/roberto/COverage_ws/build/micros_swarm_framework/core/gsdf_msgs/catkin_generated/installspace/gsdf_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gsdf_msgs/cmake" TYPE FILE FILES
    "/home/roberto/COverage_ws/build/micros_swarm_framework/core/gsdf_msgs/catkin_generated/installspace/gsdf_msgsConfig.cmake"
    "/home/roberto/COverage_ws/build/micros_swarm_framework/core/gsdf_msgs/catkin_generated/installspace/gsdf_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gsdf_msgs" TYPE FILE FILES "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/package.xml")
endif()

