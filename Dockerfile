FROM ubuntu:latest
WORKDIR /hpool
ADD ./hpool-miner-chia hpool-miner-chia
RUN chomod +x hpool-miner-chia
ADD ./config.yaml config.yaml
ADD ./chia-plotter-linux-amd64 chia-plotter-linux-amd64
RUN chomod +x chia-plotter-linux-amd64
ADD ./ProofOfSpace ProofOfSpace
RUN chomod +x ProofOfSpace
ENTRYPOINT ["bash", "./hpool-miner-chia"]