# docker-centos7-epics-base
Docker image to have EPICS-base on CentOS7

This image is expected to become the base-image for containers with EPICS-based application.

## command memo
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

