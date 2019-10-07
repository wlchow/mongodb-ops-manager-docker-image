# mongodb-ops-manager-docker-image/

# Docker Image with MongoDB Ops Manager

This builds a docker image with Ubuntu 16.04 x64 (xenial) with the MongoDB Ops Manager version 4.2.2.56673.20191001T1500Z-1 (default) installed.
The Ops Manager Downloads are here: https://www.mongodb.com/subscription/downloads/archived

To build the Docker "mongodb-opsmgr" image, follow these steps:

#### 1) Install [Docker](https://docs.docker.com/install/) locally on your own workstation/laptop.

#### 2) Download the source files for this project (on the project page, click the "Clone or download" green button. To Download, click the "Download zip" link and once downloaded, unpack into a new local folder).

#### 3) From a command line shell, to build it using the default MongoDB Ops Manager version 4.2.2.56673.20191001T1500Z-1, just run:
```
$ docker build -t wchow/mongodb-opsmgr:4.2.2 .
```

Or if you prefer a specifc Ops Manager version then use the build argument MONGO_OPSMGR_VERSION with the version number. For example, to build with version 4.0.15.50565.20190823T1918Z-1
```
$ docker build -t wchow/mongodb-opsmgr:4.0.15 --build-arg MONGO_OPSMGR_VERSION=4.0.15.50565.20190823T1918Z-1 .
```

#### 4) Once the image is generated, you can also quickly test the image by running it in a Docker container on your local machine 
```
$ docker run -t -i wchow/mongodb-opsmgr:4.2.2

# cat /mongodb-mms-4.2.2.56673.20191001T1500Z-1.x86_64/VERSION
4.2.2.56673.20191001T1500Z 1c8a7e6be7ba7ce63aa92be4003eae16642476cd
```

