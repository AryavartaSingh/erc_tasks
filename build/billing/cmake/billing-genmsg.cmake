# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "billing: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ibilling:/home/aryavarta/t1_bill_ws/src/billing/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(billing_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg" NAME_WE)
add_custom_target(_billing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "billing" "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg" ""
)

get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv" NAME_WE)
add_custom_target(_billing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "billing" "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(billing
  "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/billing
)

### Generating Services
_generate_srv_cpp(billing
  "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/billing
)

### Generating Module File
_generate_module_cpp(billing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/billing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(billing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(billing_generate_messages billing_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg" NAME_WE)
add_dependencies(billing_generate_messages_cpp _billing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv" NAME_WE)
add_dependencies(billing_generate_messages_cpp _billing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(billing_gencpp)
add_dependencies(billing_gencpp billing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS billing_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(billing
  "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/billing
)

### Generating Services
_generate_srv_eus(billing
  "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/billing
)

### Generating Module File
_generate_module_eus(billing
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/billing
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(billing_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(billing_generate_messages billing_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg" NAME_WE)
add_dependencies(billing_generate_messages_eus _billing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv" NAME_WE)
add_dependencies(billing_generate_messages_eus _billing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(billing_geneus)
add_dependencies(billing_geneus billing_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS billing_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(billing
  "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/billing
)

### Generating Services
_generate_srv_lisp(billing
  "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/billing
)

### Generating Module File
_generate_module_lisp(billing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/billing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(billing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(billing_generate_messages billing_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg" NAME_WE)
add_dependencies(billing_generate_messages_lisp _billing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv" NAME_WE)
add_dependencies(billing_generate_messages_lisp _billing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(billing_genlisp)
add_dependencies(billing_genlisp billing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS billing_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(billing
  "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/billing
)

### Generating Services
_generate_srv_nodejs(billing
  "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/billing
)

### Generating Module File
_generate_module_nodejs(billing
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/billing
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(billing_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(billing_generate_messages billing_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg" NAME_WE)
add_dependencies(billing_generate_messages_nodejs _billing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv" NAME_WE)
add_dependencies(billing_generate_messages_nodejs _billing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(billing_gennodejs)
add_dependencies(billing_gennodejs billing_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS billing_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(billing
  "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/billing
)

### Generating Services
_generate_srv_py(billing
  "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/billing
)

### Generating Module File
_generate_module_py(billing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/billing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(billing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(billing_generate_messages billing_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/msg/billmsg.msg" NAME_WE)
add_dependencies(billing_generate_messages_py _billing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aryavarta/t1_bill_ws/src/billing/srv/inc_inv.srv" NAME_WE)
add_dependencies(billing_generate_messages_py _billing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(billing_genpy)
add_dependencies(billing_genpy billing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS billing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/billing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/billing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(billing_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/billing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/billing
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(billing_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/billing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/billing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(billing_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/billing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/billing
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(billing_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/billing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/billing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/billing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(billing_generate_messages_py std_msgs_generate_messages_py)
endif()
