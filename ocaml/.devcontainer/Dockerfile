FROM fedora:40

RUN dnf update -y && dnf install -y \
    sudo \
    opam \
    gcc \
    gcc-c++ \
    make \
    pkg-config \
    pcre-devel \
    m4 \
    git \
    curl \
    unzip \
    zlib-devel

# Initialize opam
RUN useradd -m opam && \
    echo "opam ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER opam
WORKDIR /home/opam
RUN opam init -y --disable-sandboxing

# Install OCaml packages
RUN opam switch create 5.2.0 && \
    eval $(opam env) && \
    opam install -y \
    dune \
    utop \
    ocaml-lsp-server \
    ocamlformat \
    odoc \
    core \
    ounit2 \
    merlin

# Set environment variables
ENV PATH="/home/opam/.opam/5.2.0/bin:${PATH}"