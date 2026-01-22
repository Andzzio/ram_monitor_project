cmake_minimum_required(VERSION 3.10.0)
project(ram_cpp_library VERSION 0.1.0 LANGUAGES C CXX)

add_library(ram_manager SHARED ram_manager.cpp)

add_executable(ram_cpp_library main.cpp)

target_link_libraries(ram_cpp_library ram_manager)