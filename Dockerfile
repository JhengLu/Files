# Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
ARG FROM_IMAGE_NAME=pytorch/pytorch:1.3-cuda10.1-cudnn7-runtime
FROM ${FROM_IMAGE_NAME} FROM ubuntu: 20.04
FROM python:3.7
# package dependencies
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ="America/Detroit"
RUN apt-get update && apt-get install -y build-essential vim libevent-dev memcached wet gcc gtt libnuma-dev 1sb-release software-properties-common numact] libtool
# latest cmake
RUN apt-get install -y cmake
ADD requirements.txt.
RUN apt install -y libprotobuf-dev protobuf-compiler
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip install torch==1.3.1
RuN pip install requirements ext
WORKDIR /code
ADD ..
