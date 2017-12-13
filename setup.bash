#!/bin/bash
pip install tqdm
pip install tensorflow-gpu==1.3

cd data

wget https://s3-us-west-1.amazonaws.com/udacity-selfdrivingcar/vgg.zip
unzip vgg.zip
rm vgg.zip

wget http://kitti.is.tue.mpg.de/kitti/data_road.zip
unzip data_road.zip
rm data_road.zip

cd data_road/training
wget https://www.dropbox.com/s/mlst8rm07obx5rg/data_4.zip?dl=0
unzip data_4.zip?dl=0
rm data_4.zip?dl=0

cd ..
cd ..
cd ..
