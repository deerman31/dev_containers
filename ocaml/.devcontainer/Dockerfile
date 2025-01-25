FROM fedora:40

RUN dnf update -y && dnf install -y \
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
RUN useradd -m opam
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



# FROM ocaml/opam:debian-ocaml-4.14

# # Install system dependencies
# RUN sudo apt-get update && sudo apt-get install -y \
#     pkg-config \
#     libpcre3-dev \
#     m4 \
#     git \
#     curl \
#     unzip \
#     build-essential \
#     zlib1g-dev

# # Install OCaml packages
# RUN opam update && \
#     opam install -y \
#     dune \
#     utop \
#     ocaml-lsp-server \
#     ocamlformat \
#     odoc \
#     core \
#     ounit2 \
#     merlin

# # Set environment variables
# ENV CAML_LD_LIBRARY_PATH="/home/opam/.opam/4.14/lib/stublibs"
# ENV OCAML_TOPLEVEL_PATH="/home/opam/.opam/4.14/lib/toplevel"
# ENV PATH="/home/opam/.opam/4.14/bin:${PATH}"
