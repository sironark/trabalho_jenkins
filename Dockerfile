FROM ubuntu:latest
WORKDIR /home
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install default-jre-headless git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/sironark/trabalho_jenkins.git
RUN git config --global user.email "gabriel_lopeslomeu@hotmail.com"
RUN git config --global user.name "sironark"
WORKDIR /home/trabalho_jenkins
CMD ["./gradlew", "build"]

