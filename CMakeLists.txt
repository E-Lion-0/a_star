cmake_minimum_required(VERSION 3.21)
project(a_star)

set(CMAKE_CXX_STANDARD 14)


#setting source
set(SOURCE_FILES main.cpp)
set(EXECUTABLE_NAME "A-star")
add_executable(a_star main.cpp Engine.cpp Engine.h Cell.cpp Cell.h Grid.cpp Grid.h)


find_package(SFML 2.5.1 COMPONENTS graphics audio REQUIRED)



target_link_libraries(a_star sfml-graphics sfml-audio)



