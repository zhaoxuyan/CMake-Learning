rm -rf build
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX=../perfix ..
make
# make install