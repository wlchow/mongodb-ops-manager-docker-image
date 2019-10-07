FROM ubuntu:xenial

# Allow build-time overrides (eg. to build image with a specific MongoDB Ops Manager version)
# Example: docker build --build-arg MONGO_OPSMGR_VERSION=4.2.1.56625.20190905T1240Z-1
ARG MONGO_OPSMGR_VERSION=4.2.2.56673.20191001T1500Z-1
ENV MONGO_OPSMGR_VERSION=${MONGO_OPSMGR_VERSION}

RUN set -ex; \
	apt-get update; \
        apt-get install -y openssl libssl-dev; \
	apt-get install -y --no-install-recommends \
                ca-certificates \
		wget \
		net-tools \
	; \
        wget -O mongodb-mms-${MONGO_OPSMGR_VERSION}.x86_64.tar.gz "https://downloads.mongodb.com/on-prem-mms/tar/mongodb-mms-${MONGO_OPSMGR_VERSION}.x86_64.tar.gz"; \
        tar -zxf mongodb-mms-${MONGO_OPSMGR_VERSION}.x86_64.tar.gz; \
        rm mongodb-mms-${MONGO_OPSMGR_VERSION}.x86_64.tar.gz; \

EXPOSE 8080


