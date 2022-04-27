cmake_minimum_required(VERSION 3.21)
project(a_star)

set(CMAKE_CXX_STANDARD 14)


set(SOURCE_FILES main.cpp )


include_directories(SFML/include SFML/lib)

add_executable(a_star ${SOURCE_FILES})
target_link_libraries(a_star sfml-system sfml-window sfml-graphics sfml-audio sfml-network)