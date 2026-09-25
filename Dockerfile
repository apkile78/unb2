FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install Ladybird build tools and system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    ninja-build \
    clang \
    gcc \
    g++ \
    git \
    python3 \
    python3-pip \
    python3-venv \
    curl \
    tar \
    unzip \
    zip \
    nasm \
    ccache \
    pkg-config \
    autoconf \
    autoconf-archive \
    automake \
    libtool \
    libgl1-mesa-dev \
    libpulse-dev \
    qt6-base-dev \
    qt6-tools-dev-tools \
    qt6-wayland \
    rustc \
    cargo \
    e2fsprogs \
    && rm -rf /var/lib/apt/lists/*

# Clone the Ladybird repository into the root home directory
WORKDIR /root
RUN git clone https://github.com/LadybirdBrowser/ladybird.git

# Set default directory on environment startup
WORKDIR /root/ladybird
