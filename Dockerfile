FROM scratch

ADD raspbian.tar.gz /
RUN sudo apt-get update -y && \
    sudo apt-get upgrade -y && \
    sudo apt install -y python3-venv python3-pip
    
CMD ["/bin/bash"]

#run with  --device=/dev/vcsm --device=/dev/vchiq