# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gsdf_msgs: 18 messages, 0 services")

set(MSG_I_FLAGS "-Igsdf_msgs:/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gsdf_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg" "gsdf_msgs/CommContent:gsdf_msgs/CommHeader"
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg" ""
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg" NAME_WE)
add_custom_target(_gsdf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gsdf_msgs" "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg"
  "${MSG_I_FLAGS}"
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg;/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_cpp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(gsdf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gsdf_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gsdf_msgs_generate_messages gsdf_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_cpp _gsdf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gsdf_msgs_gencpp)
add_dependencies(gsdf_msgs_gencpp gsdf_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gsdf_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg"
  "${MSG_I_FLAGS}"
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg;/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_eus(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(gsdf_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gsdf_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gsdf_msgs_generate_messages gsdf_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_eus _gsdf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gsdf_msgs_geneus)
add_dependencies(gsdf_msgs_geneus gsdf_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gsdf_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg"
  "${MSG_I_FLAGS}"
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg;/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_lisp(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(gsdf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gsdf_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gsdf_msgs_generate_messages gsdf_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_lisp _gsdf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gsdf_msgs_genlisp)
add_dependencies(gsdf_msgs_genlisp gsdf_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gsdf_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg"
  "${MSG_I_FLAGS}"
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg;/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_nodejs(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(gsdf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gsdf_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gsdf_msgs_generate_messages gsdf_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_nodejs _gsdf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gsdf_msgs_gennodejs)
add_dependencies(gsdf_msgs_gennodejs gsdf_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gsdf_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg"
  "${MSG_I_FLAGS}"
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg;/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)
_generate_msg_py(gsdf_msgs
  "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(gsdf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gsdf_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gsdf_msgs_generate_messages gsdf_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommHeader.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommContent.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/CommPacket.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/RobotBase.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/JoinSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/LeaveSwarm.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SwarmList.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/VirtualStigmergyPuts.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardQuery.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BlackBoardPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOGet.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/SCDSPSOPut.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/NeighborBroadcastKeyValue.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierSyn.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/micros_swarm_framework/core/gsdf_msgs/msg/BarrierAck.msg" NAME_WE)
add_dependencies(gsdf_msgs_generate_messages_py _gsdf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gsdf_msgs_genpy)
add_dependencies(gsdf_msgs_genpy gsdf_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gsdf_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gsdf_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gsdf_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gsdf_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gsdf_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gsdf_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gsdf_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gsdf_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gsdf_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gsdf_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gsdf_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
