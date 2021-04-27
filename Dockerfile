FROM ubuntu:latest
WORKDIR /hpool
ADD ./hpool-miner-chia hpool-miner-chia
RUN chmod +x hpool-miner-chia
ADD ./config.yaml config.yaml
ADD ./chia-plotter-linux-amd64 chia-plotter-linux-amd64
RUN chmod +x chia-plotter-linux-amd64
ADD ./ProofOfSpace ProofOfSpace
RUN chmod +x ProofOfSpace
ENTRYPOINT ["bash", "./hpool-miner-chia"]
