# Install script for directory: /home/roberto/COverage_ws/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roberto/COverage_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roberto/COverage_ws/install" TYPE PROGRAM FILES "/home/roberto/COverage_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roberto/COverage_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roberto/COverage_ws/install" TYPE PROGRAM FILES "/home/roberto/COverage_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roberto/COverage_ws/install/setup.bash;/home/roberto/COverage_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roberto/COverage_ws/install" TYPE FILE FILES
    "/home/roberto/COverage_ws/build/catkin_generated/installspace/setup.bash"
    "/home/roberto/COverage_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roberto/COverage_ws/install/setup.sh;/home/roberto/COverage_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roberto/COverage_ws/install" TYPE FILE FILES
    "/home/roberto/COverage_ws/build/catkin_generated/installspace/setup.sh"
    "/home/roberto/COverage_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roberto/COverage_ws/install/setup.zsh;/home/roberto/COverage_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roberto/COverage_ws/install" TYPE FILE FILES
    "/home/roberto/COverage_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/roberto/COverage_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roberto/COverage_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roberto/COverage_ws/install" TYPE FILE FILES "/home/roberto/COverage_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/roberto/COverage_ws/build/gtest/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/micros_swarm_framework/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tools/micros_swarm_gazebo/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tools/hector_quadrotor/hector_uav_msgs/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/core/app_loader/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/core/gsdf_msgs/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/core/micros_swarm/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/applications/app1/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/applications/app2/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/applications/app3/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tools/micros_swarm_stage/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/core/opensplice_dds_broker/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/pso/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/robotformations/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/core/ros_broker/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tests/test_statistic/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tests/testbb/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tests/testnc/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tests/testrth/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tests/testscdspso/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/tests/testvstig/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/co-coverage/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/applications/gazebo_flocking/cmake_install.cmake")
  include("/home/roberto/COverage_ws/build/micros_swarm_framework/core/udp_bc_broker/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/roberto/COverage_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
