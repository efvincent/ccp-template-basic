@echo off

REM Create a build subdirectory if it doesn't exist
if not exist build (
    mkdir build
)

REM Switch to the build directory
cd build

REM Run cmake to configure the project
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..

REM Build the project
cmake --build .

REM Switch back to the project directory
cd ..
