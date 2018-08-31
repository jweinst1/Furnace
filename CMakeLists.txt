cmake_minimum_required(VERSION 3.5)

project(Furnace)

######Furnace core source files#######
SET(core_files
    src/Furnace.c
)

####### Furnace Libraries ########

add_library(FurnaceShared SHARED 
    "${core_files}"
)

add_library(FurnaceStatic STATIC 
    "${core_files}"
)

###################################

target_include_directories(FurnaceStatic
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)

target_include_directories(FurnaceShared
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)

# Add test executables to build
add_executable(FurnaceTests
    tests/test_main.c
)

target_include_directories(FurnaceTests
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)

# links library to test executable
target_link_libraries( FurnaceTests
    PRIVATE 
        FurnaceShared
)
