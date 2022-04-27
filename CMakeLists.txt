cmake_minimum_required(VERSION 3.21)
project(a_star)

set(CMAKE_CXX_STANDARD 14)


set(SOURCE_FILES main.cpp )

add_executable(a_star ${SOURCE_FILES})
find_package(SFML 2.5.1 COMPONENTS system window graphics network audio REQUIRED)
include_directories(SFML)
target_link_libraries(a_star sfml-system sfml-window sfml-graphics sfml-audio sfml-network)