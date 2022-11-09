FROM debian:buster

RUN apt-get update && apt-get -y install curl \
                                    git 

RUN git clone https://github.com/Ybouali/portfolio.git

RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash

RUN apt-get update && apt-get -y install nodejs

COPY ./tools/script.sh /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]