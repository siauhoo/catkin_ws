# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "conv: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(conv_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv" NAME_WE)
add_custom_target(_conv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "conv" "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(conv
  "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conv
)

### Generating Module File
_generate_module_cpp(conv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(conv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(conv_generate_messages conv_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv" NAME_WE)
add_dependencies(conv_generate_messages_cpp _conv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(conv_gencpp)
add_dependencies(conv_gencpp conv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS conv_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(conv
  "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/conv
)

### Generating Module File
_generate_module_eus(conv
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/conv
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(conv_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(conv_generate_messages conv_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv" NAME_WE)
add_dependencies(conv_generate_messages_eus _conv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(conv_geneus)
add_dependencies(conv_geneus conv_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS conv_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(conv
  "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/conv
)

### Generating Module File
_generate_module_lisp(conv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/conv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(conv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(conv_generate_messages conv_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv" NAME_WE)
add_dependencies(conv_generate_messages_lisp _conv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(conv_genlisp)
add_dependencies(conv_genlisp conv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS conv_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(conv
  "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/conv
)

### Generating Module File
_generate_module_nodejs(conv
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/conv
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(conv_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(conv_generate_messages conv_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv" NAME_WE)
add_dependencies(conv_generate_messages_nodejs _conv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(conv_gennodejs)
add_dependencies(conv_gennodejs conv_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS conv_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(conv
  "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conv
)

### Generating Module File
_generate_module_py(conv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(conv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(conv_generate_messages conv_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siauhoo/catkin_ws/src/conv/srv/conv.srv" NAME_WE)
add_dependencies(conv_generate_messages_py _conv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(conv_genpy)
add_dependencies(conv_genpy conv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS conv_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(conv_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/conv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/conv
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(conv_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/conv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/conv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(conv_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/conv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/conv
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(conv_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conv)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(conv_generate_messages_py std_msgs_generate_messages_py)
endif()
