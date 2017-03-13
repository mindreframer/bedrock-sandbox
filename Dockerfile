FROM ubuntu:trusty

RUN apt-get update && apt-get install wget apt-transport-https lsof mysql-client -y
RUN wget -O /etc/apt/sources.list.d/bedrock.list https://apt.bedrockdb.com/ubuntu/dists/$(lsb_release -cs)/bedrock.list && \
    wget -O - https://apt.bedrockdb.com/bedrock.gpg | sudo apt-key add -
RUN apt-get update && apt-get install bedrock -y
