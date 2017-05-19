# Install script for directory: /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/mysql")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/mysql.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/mysql_com.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_command.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/mysql_time.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_list.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_alloc.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/typelib.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/binary_log_types.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_dbug.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/m_string.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_sys.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_xml.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/mysql_embed.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_thread.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_thread_local.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/decimal.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/errmsg.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_global.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_getopt.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/sslopt-longopts.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_dir.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/sslopt-vars.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/sslopt-case.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/sql_common.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/keycache.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/m_ctype.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_compiler.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/mysql_com_server.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/my_byteorder.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/byte_order_generic.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/byte_order_generic_x86.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/little_endian.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/big_endian.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/thr_cond.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/thr_mutex.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/thr_rwlock.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/mysql_version.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/my_config.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/mysqld_ername.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/mysqld_error.h"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/sql_state.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql" TYPE DIRECTORY FILES "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/include/mysql/" REGEX "/[^/]*\\.h$" REGEX "/psi\\_abi[^/]*$" EXCLUDE)
endif()

