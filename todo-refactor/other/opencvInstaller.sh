cd ~

sudo apt-get update
 
sudo apt-get upgrade


#install dependencies
sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python3.5-dev python3-numpy libtbb2 libtbb-dev
sudo apt-get install libjpeg-dev libpng-dev libtiff5-dev libjasper-dev libdc1394-22-dev libeigen3-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev sphinx-common libtbb-dev yasm libfaac-dev libopencore-amrnb-dev libopencore-amrwb-dev libopenexr-dev libgstreamer-plugins-base1.0-dev libavutil-dev libavfilter-dev libavresample-dev

#get Opencv
cd /opt
pwd

git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git

cd /opt/opencv
pwd
git checkout 70bbf17b133496bd7d54d034b0f94bd869e0e810 #Mudando para 3.2.0   #git checkout 264679a7254cc8051b0d11d11e769201d04b3570 #Mudando para versão 3.4 

cd ..
pwd
cd /opt/opencv_contrib
git checkout 86342522b0eb2b16fa851c020cc4e0fef4e010b7 #Mudando para versão 3.2.0 do contrib #git checkout fc979a85ba610e0e3cd6e1a963f2b803ee6f2fd9 #mudando para versão 3.4 do opencv_contrib

cd ..

#build and install OpenCV

cd /opt/opencv
mkdir release
cd /opt/opencv/release
pwd
cmake -D WITH_EIGEN=OFF -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/
make -j4
make install
ldconfig
exit
cd ~
pkg-config --modversion opencv
