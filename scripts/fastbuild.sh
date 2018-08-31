
# For running in one command
mkdir -p build
cd build
cmake ..
make
./FurnaceTests
cd ..
rm -rf build
