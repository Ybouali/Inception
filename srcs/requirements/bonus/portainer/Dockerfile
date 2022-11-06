FROM debian:buster

RUN apt update && apt -y install wget 

RUN wget https://github.com/portainer/portainer/releases/download/2.15.1/portainer-2.15.1-linux-amd64.tar.gz && \
            tar xvf portainer-2.15.1-linux-amd64.tar.gz && \
            rm -rf portainer-2.15.1-linux-amd64.tar.gz

ENTRYPOINT [ "/portainer/portainer" ] 
