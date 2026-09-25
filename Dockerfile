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

# Clone into /home/user/ladybird and set readable permissions
RUN mkdir -p /home/user && \
    git clone https://github.com/LadybirdBrowser/ladybird.git /home/user/ladybird && \
    chmod -R 777 /home/user

WORKDIR /home/user/ladybird
