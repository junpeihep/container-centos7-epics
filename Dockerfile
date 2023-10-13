# EPICS-base on CetnOS7

# Base image
FROM centos:centos7

# Maintainer
LABEL maintainer="junpeihep <junpeihep@gmail.com>"

# Version info
LABEL version="centos7-epics3.15.8"

# dnf update
RUN yum -y update

# install mandatory package for EPICS compile
RUN yum -y install wget make perl gcc-c++

# environment variable for EPICS
ENV WORK_DIR=/usr/local/epics \
    EPICS_VER=3.15.8

# install EPICS
RUN mkdir ${WORK_DIR} && \
    cd ${WORK_DIR}    && \
    wget -q https://epics.anl.gov/download/base/base-${EPICS_VER}.tar.gz && \
    tar -zxvf base-${EPICS_VER}.tar.gz  && \
    rm base-${EPICS_VER}.tar.gz && \
    cd base-${EPICS_VER} && \
    make

# more environment variables for EPICS
ENV EPICS=/usr/local/epics \
    EPICS_HOST_ARCH=linux-x86_64 \
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/epics/base-3.15.8/bin/linux-x86_64:$PATH

# expose the ports
EXPOSE 5064/tcp 5065/tcp
EXPOSE 5064/udp 5065/udp

CMD ["/bin/bash"]
