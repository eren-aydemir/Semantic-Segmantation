# Semantic-Segmantation

###Introduction
In this project the aim is to build Fully Connected Network (FCN) to segment road sections into a number of classes. VGG-16 image classifier is used at encoder side of FCN and decoder side has been trained by using KITTI dataset.

###Network Architecture

Final fully connected layer of the pretrained VGG-16 network is converted to a 1x1 convolutional layer.The depth is setted to desired number of class, in this project it is 2 (road and not road). Upsampling transpose layers are used and result resolution is increased by using skip level connections from layer3 and layer4. In each convolutional and transpose layers have initialized and regularized. Cros-entropy loss function and Adam optimizer is used. Below chosen hyperparameters can be seen:

keep_prob: 0.5
learning_rate: 0.0009
epochs: 10
batch_size: 5

Due lack of GPU epoch is kept in just 1 but as number of epoch increased it is clear that total loss can be reduced a lot more and better performance can be achieved. Even if one epoch used loss is reduced around to 0.1.
