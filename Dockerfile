FROM ubuntu
RUN apt-get update
# software-properties-common on 12.10+
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install -y oracle-java7-installer
RUN wget "https://s3.amazonaws.com/github-cloud/releases/6220644/3717dc6a-0f44-11e3-8052-7fafed698fa7.gz?response-content-disposition=attachment%3B%20filename%3Dopenrefine-linux-2.6-beta.1.tar.gz&AWSAccessKeyId=AKIAISTNZFOVBIJMK3TQ&Expires=1392063037&Signature=BjIj21TDWWmfgpQPNRw%2FOkEdpdc%3D"
RUN tar xf openrefine-linux-2.6-beta.1.tar.gz
