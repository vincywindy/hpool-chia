FROM ubuntu:latest
WORKDIR /hpool
ADD ./hpool-miner-chia hpool-miner-chia
RUN chmod 777 hpool-miner-chia
RUN mkdir /config
ADD ./config.yaml /config/config.yaml
ADD ./chia-plotter-linux-amd64 chia-plotter-linux-amd64
RUN chmod 777 chia-plotter-linux-amd64
ADD ./ProofOfSpace ProofOfSpace
RUN chmod 777 ProofOfSpace
ADD ./entrypoint.sh entrypoint.sh
ENTRYPOINT ["bash", "./entrypoint.sh"]
