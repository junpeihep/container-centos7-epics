# docker-centos7-epics-base
Docker image of [EPICS](https://epics.anl.gov/)-base on CentOS7

This image is expected to become the base-image for containers with [EPICS](https://epics.anl.gov/)-based application.

The image is also available as [centos7-epics-base on Docker Hub](https://hub.docker.com/r/junpeihep/centos7-epics-base).
So you can pull the image as follows:
```bash
docker pull junpeihep/centos7-epics-base
```
Or use as a base image in your Dockerfile:
```Dockerfile
FROM junpeihep/centos7-epics-base:latest
```

## Environment variables
The following variables are set as the environment variable. Child image can use them.
|variable name|contents|
|:-------|:---------------|
|WORK_DIR|/usr/local/epics|
|EPICS_VER|3.15.8|
|EPICS|/usr/local/epics|
|EPICS_HOST_ARCH|linux-x86_64|
|PATH|/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/epics/base-3.15.8/bin/linux-x86_64|
    
## for developers
### to build the container (if needed)
```bash
git clone https://github.com/junpeihep/docker-centos7-epics-base.git
cd docker-centos7-epics-base
docker build -t junpeihep/centos7-epics-base .
```
### to run and login the shell
```bash
docker run -it junpeihep/centos7-epics-base bash
```

