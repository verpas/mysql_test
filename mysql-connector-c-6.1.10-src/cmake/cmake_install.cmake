# Install script for directory: /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL FILES
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/COPYING"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/LICENSE.mysql"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/README")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Documentation" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE FILE FILES
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/Docs/INFO_SRC"
    "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/Docs/INFO_BIN"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/zlib/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra/yassl/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra/yassl/taocrypt/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/dbug/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/strings/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/vio/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/regex/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/mysys/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/mysys_ssl/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/scripts/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/testclients/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/support-files/cmake_install.cmake")
  include("/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/packaging/WiX/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
