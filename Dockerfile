FROM ubuntu
MAINTAINER Michael J. Cohen, mjc@kernel.org
RUN apt-get update
# software-properties-common on 12.10+
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer
RUN wget "https://s3.amazonaws.com/github-cloud/releases/6220644/3717dc6a-0f44-11e3-8052-7fafed698fa7.gz?response-content-disposition=attachment%3B%20filename%3Dopenrefine-linux-2.6-beta.1.tar.gz&AWSAccessKeyId=AKIAISTNZFOVBIJMK3TQ&Expires=1392063037&Signature=BjIj21TDWWmfgpQPNRw%2FOkEdpdc%3D"
RUN tar xf openrefine-linux-2.6-beta.1.tar.gz
