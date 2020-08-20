FROM ubuntu:xenial


ENV MSPORT 8002

RUN apt-get update
RUN apt-get install -y git --fix-missing
RUN mkdir -p /usr/app/server/marlin-init
WORKDIR /usr/app/server/marlin-init
RUN git clone https://github.com/Zeeve-App/marlin-init --depth 1 .

EXPOSE $MSPORT 

#ENTRYPOINT while true; do echo yo && sleep 100 ; done

ENTRYPOINT "./marlin-init.sh" "masterNode" "127.0.0.1" $MSPORT
