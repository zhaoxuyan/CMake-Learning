# CMAKE_INSTALL_PREFIX 的默认定义是/usr/local
rm -rf build
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX=../perfix ..
make
make install