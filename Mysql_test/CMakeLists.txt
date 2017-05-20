cmake_minimum_required(VERSION 3.7)
project(mysql_test)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 11)
file(GLOB SRCS ./*.cpp)
include_directories(include)
foreach(SRC ${SRCS})
    get_filename_component(NAME ${SRC} NAME_WE)
        endforeach()
#set(CMAKE_EXE_LINKER_FLAGS "-static")
include_directories(../mysql-connector-c-6.1.10-macos10.12-x86_64/include/)
link_directories(../mysql-connector-c-6.1.10-src/cmake/libmysql )

set(SOURCE_FILES Mysql_test.cpp ${SRCS})

link_libraries(libmysqlclient.a)
add_executable(mysql_test ${SOURCE_FILES})git