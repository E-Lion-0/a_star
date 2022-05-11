cmake_minimum_required(VERSION 3.21)
project(a_star)

set(CMAKE_CXX_STANDARD 14)


#setting source
set(SOURCE_FILES main.cpp header.h )
set(EXECUTABLE_NAME "A-star")
add_executable(a_star main.cpp)


find_package(SFML 2.5.1 COMPONENTS graphics audio REQUIRED)



target_link_libraries(a_star sfml-graphics sfml-audio)



