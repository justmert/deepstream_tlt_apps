#!/bin/sh
################################################################################
# Copyright (c) 2021, NVIDIA CORPORATION. All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
################################################################################

# Check following part for how to download the TLT 3.0 models:

# For Faster-RCNN / YoloV3 / YoloV4 /SSD / DSSD / RetinaNet/ UNET/:
# wget https://nvidia.box.com/shared/static/i1cer4s3ox4v8svbfkuj5js8yqm3yazo.zip -O models.zip

# For peopleSemSegNet:
# wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tlt_peoplesemsegnet/versions/deployable_v1.0/zip \
# -O tlt_peoplesemsegnet_deployable_v1.0.zip

# For peopleSegNet V2:
# wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tlt_peoplesegnet/versions/deployable_v2.0/zip \
# -O tlt_peoplesegnet_deployable_v2.0.zip

# For old peopleSegNet:
# wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tlt_peoplesegnet/versions/deployable_v1.0/zip \
# -O tlt_peoplesegnet_deployable_v1.0.zip

echo "==================================================================="
echo "begin download models for Faster-RCNN / YoloV3 / YoloV4 /SSD / DSSD / RetinaNet/ UNET/"
echo "==================================================================="
wget https://nvidia.box.com/shared/static/i1cer4s3ox4v8svbfkuj5js8yqm3yazo.zip -O models.zip
unzip models.zip
rm models.zip

echo "==================================================================="
echo "begin download models for peopleSegNet "
echo "==================================================================="
mkdir -p models/peopleSegNet/V2
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tlt_peoplesegnet/versions/deployable_v2.0/zip \
-O tlt_peoplesegnet_deployable_v2.0.zip
unzip tlt_peoplesegnet_deployable_v2.0.zip -d models/peopleSegNet/V2
rm tlt_peoplesegnet_deployable_v2.0.zip

wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tlt_peoplesegnet/versions/deployable_v1.0/zip \
-O tlt_peoplesegnet_deployable_v1.0.zip
unzip tlt_peoplesegnet_deployable_v1.0.zip -d models/peopleSegNet/
rm tlt_peoplesegnet_deployable_v1.0.zip

echo "==================================================================="
echo "begin download models for peopleSemSegNet "
echo "==================================================================="
mkdir -p models/peopleSemSegNet
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tlt_peoplesemsegnet/versions/deployable_v1.0/zip \
-O tlt_peoplesemsegnet_deployable_v1.0.zip
unzip tlt_peoplesemsegnet_deployable_v1.0.zip -d models/peopleSemSegNet/
rm tlt_peoplesemsegnet_deployable_v1.0.zip

echo "==================================================================="
echo "Download models successfully "
echo "==================================================================="
