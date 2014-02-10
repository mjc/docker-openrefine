FROM ubuntu
MAINTAINER Michael J. Cohen, mjc@kernel.org
RUN apt-get update -qq
# software-properties-common on 12.10+
RUN apt-get install -qq -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update -qq
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -qq -y oracle-java7-installer
RUN wget "https://github.com/OpenRefine/OpenRefine/releases/download/2.6-beta.1/openrefine-linux-2.6-beta.1.tar.gz"
RUN tar xf openrefine-linux-2.6-beta.1.tar.gz
