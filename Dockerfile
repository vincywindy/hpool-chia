FROM ubuntu:latest
WORKDIR /hpool
ADD ./hpool-miner-chia hpool-miner-chia
RUN chmod 777 hpool-miner-chia
ADD ./config.yaml config.yaml
RUN mkdir /plot
RUn cd /plot
ADD ./chia-plotter-linux-amd64 chia-plotter-linux-amd64
RUN chmod 777 chia-plotter-linux-amd64
ADD ./ProofOfSpace ProofOfSpace
RUN chmod 777 ProofOfSpace
ENTRYPOINT ["/usr/bin/sh", "./hpool-miner-chia"]
