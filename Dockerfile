FROM debian:trixie

RUN echo $'Types: deb \n\
           URIs: http://deb.debian.org/debian \n\
           Suites: trixie trixie-updates experimental \n\
           Components: main \n\
           Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg \n' > /etc/apt/sources.list.d/experimental.list

# We need reprepro >= 5.1.1 so that we can accumulate multiple versions of the same package
RUN sudo apt update && sudo apt install -y -t experimental \
     reprepro \
 && rm -rf /var/lib/apt/lists/*
