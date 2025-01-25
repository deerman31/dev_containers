FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    opam \
    gcc \
    make \
    m4 \
    git \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m opam && \
    echo "opam ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER opam
WORKDIR /home/opam/work


RUN opam init -y --disable-sandboxing && \
    opam switch create 5.2.0 && \
    echo 'eval $(opam env)' >> ~/.bashrc

ENV PATH="/home/opam/.opam/5.2.0/bin:${PATH}"

CMD ["/bin/bash"]