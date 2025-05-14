include(FetchContent)
FetchContent_Declare(
  catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG v3.8.1
)
FetchContent_MakeAvailable(catch2)

file(GLOB_RECURSE TEST_SOURCES CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)

add_executable(my_tests ${TEST_SOURCES})
target_link_libraries(my_tests PRIVATE my_app_lib Catch2::Catch2WithMain)
target_include_directories(my_tests PRIVATE ${CMAKE_SOURCE_DIR}/include)
