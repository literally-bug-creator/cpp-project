cmake_minimum_required(VERSION 3.21)
project(my_app LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

file(GLOB_RECURSE LIB_SOURCES CONFIGURE_DEPENDS ${CMAKE_SOURCE_DIR}/source/*.cpp)
list(FILTER LIB_SOURCES EXCLUDE REGEX "main.cpp$")

add_library(my_app_lib ${LIB_SOURCES})
target_include_directories(my_app_lib PUBLIC ${CMAKE_SOURCE_DIR}/include)

add_executable(my_app source/main.cpp)
target_link_libraries(my_app PRIVATE my_app_lib)

option(ENABLE_TESTS "Enable building tests" ON)
if (ENABLE_TESTS)
  add_subdirectory(tests)
endif()
