
ARG VERSION=9
ARG OS=debian

FROM ${OS}:${VERSION}

RUN apt-get update -y && \
    apt-get install -y curl \
                       git \
                       apt-trasnport-https \
                       lsb_release \
                       openssh-client && \
    export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update -y && \
    apt-get install google-cloud-sdk -y && \
    gcloud config set compute/region europe-west1 && \
    gcloud config set compute/zone europe-west1-b

ENV GCLOUD_PATH=/root/my/gcloud

WORKDIR ${GCLOUD_PATH}
