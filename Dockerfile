FROM mcr.microsoft.com/vscode/devcontainers/haskell:3

RUN apt-get update && apt-get install -y \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    freeglut3-dev

RUN ghcup install
RUN ghcup install ghc
RUN ghcup install cabal
RUN cabal update
RUN cabal install gloss
