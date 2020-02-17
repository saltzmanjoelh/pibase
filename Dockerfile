FROM scratch

ADD raspbian.tar.gz /
RUN sudo apt-get update && \
    sudo apt-get upgrade && \
    sudo apt install -y python3-venv python3-pip 
    
CMD ["/bin/bash"]
