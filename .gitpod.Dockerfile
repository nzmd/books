FROM gitpod/workspace-full

USER gitpod

RUN  sudo apt-get -q update && \
     sudo apt-get install -yq libnss3 && \
     sudo apt-get install -yq libgl1-mesa-dev && \
     sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin 
    

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
