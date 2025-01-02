FROM debian:trixie

COPY experimental.sources /etc/apt/sources.list.d/

# We need reprepro >= 5.1.1 so that we can accumulate multiple versions of the same package
RUN apt update && apt install -y -t experimental \
     reprepro \
 && rm -rf /etc/apt/sources.list.d/experimental.sources /var/lib/apt/lists/*
