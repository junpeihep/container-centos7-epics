# docker-centos7-epics-base
Docker image to have EPICS-base on CentOS7

This image is expected to become the base-image for containers with EPICS-based application.

The image is available as [centos7-epics-base on Docker Hub](https://hub.docker.com/r/junpeihep/centos7-epics-base).
So you can pull the image as follows:
```bash
docker pull junpeihep/centos7-epics-base
```
Or use as a base image in your Dockerfile:
```Dockerfile
FROM junpeihep/centos7-epics-base:latest
```

## for developers
### to build the container (if needed)
```bash
git clone https://github.com/junpeihep/docker-centos7-epics-base.git
cd docker-centos7-epics-base
docker build -t junpeihep/centos7-epics-base .
```
### to run
```bash
docker run junpeihep/centos7-epics-base
```

