# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "co_coverage: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ico_coverage:/home/roberto/COverage_ws/src/co_coverage/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(co_coverage_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg" NAME_WE)
add_custom_target(_co_coverage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "co_coverage" "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg" NAME_WE)
add_custom_target(_co_coverage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "co_coverage" "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg" NAME_WE)
add_custom_target(_co_coverage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "co_coverage" "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg" NAME_WE)
add_custom_target(_co_coverage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "co_coverage" "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/co_coverage
)
_generate_msg_cpp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/co_coverage
)
_generate_msg_cpp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/co_coverage
)
_generate_msg_cpp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/co_coverage
)

### Generating Services

### Generating Module File
_generate_module_cpp(co_coverage
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/co_coverage
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(co_coverage_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(co_coverage_generate_messages co_coverage_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_cpp _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_cpp _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_cpp _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_cpp _co_coverage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(co_coverage_gencpp)
add_dependencies(co_coverage_gencpp co_coverage_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS co_coverage_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/co_coverage
)
_generate_msg_eus(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/co_coverage
)
_generate_msg_eus(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/co_coverage
)
_generate_msg_eus(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/co_coverage
)

### Generating Services

### Generating Module File
_generate_module_eus(co_coverage
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/co_coverage
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(co_coverage_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(co_coverage_generate_messages co_coverage_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_eus _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_eus _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_eus _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_eus _co_coverage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(co_coverage_geneus)
add_dependencies(co_coverage_geneus co_coverage_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS co_coverage_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/co_coverage
)
_generate_msg_lisp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/co_coverage
)
_generate_msg_lisp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/co_coverage
)
_generate_msg_lisp(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/co_coverage
)

### Generating Services

### Generating Module File
_generate_module_lisp(co_coverage
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/co_coverage
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(co_coverage_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(co_coverage_generate_messages co_coverage_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_lisp _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_lisp _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_lisp _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_lisp _co_coverage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(co_coverage_genlisp)
add_dependencies(co_coverage_genlisp co_coverage_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS co_coverage_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/co_coverage
)
_generate_msg_nodejs(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/co_coverage
)
_generate_msg_nodejs(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/co_coverage
)
_generate_msg_nodejs(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/co_coverage
)

### Generating Services

### Generating Module File
_generate_module_nodejs(co_coverage
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/co_coverage
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(co_coverage_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(co_coverage_generate_messages co_coverage_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_nodejs _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_nodejs _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_nodejs _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_nodejs _co_coverage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(co_coverage_gennodejs)
add_dependencies(co_coverage_gennodejs co_coverage_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS co_coverage_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage
)
_generate_msg_py(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage
)
_generate_msg_py(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage
)
_generate_msg_py(co_coverage
  "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage
)

### Generating Services

### Generating Module File
_generate_module_py(co_coverage
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(co_coverage_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(co_coverage_generate_messages co_coverage_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Team.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_py _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/Status.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_py _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamOrder.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_py _co_coverage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/roberto/COverage_ws/src/co_coverage/msg/SubteamParameters.msg" NAME_WE)
add_dependencies(co_coverage_generate_messages_py _co_coverage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(co_coverage_genpy)
add_dependencies(co_coverage_genpy co_coverage_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS co_coverage_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/co_coverage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/co_coverage
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(co_coverage_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(co_coverage_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/co_coverage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/co_coverage
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(co_coverage_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(co_coverage_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/co_coverage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/co_coverage
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(co_coverage_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(co_coverage_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/co_coverage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/co_coverage
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(co_coverage_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(co_coverage_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/co_coverage
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(co_coverage_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(co_coverage_generate_messages_py std_msgs_generate_messages_py)
endif()
