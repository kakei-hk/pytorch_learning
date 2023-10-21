FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu20.04

ARG USERNAME="developer"
ARG GROUPNAME="developer"
ARG UID=1000
ARG GID=1000
ARG PASSWORD="developer"
ARG WORKDIR="/workspace"


# Basic packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential \
    curl \
    ca-certificates \
    vim \
    less \
    tree \
    git \
    wget \
    unzip \
    openssh-client \
    pkg-config \
    gdb \
    clang-format \
    cmake \
    ninja-build

# Python packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    python3.8 \
    python3-pip \
    python-is-python3

# Install poetry
ENV POETRY_HOME="/opt/poetry"
ENV PATH="${POETRY_HOME}/bin:${PATH}"
RUN curl -sSL https://install.python-poetry.org | python3 -

# Modify authority
RUN groupadd -g ${GID} ${GROUPNAME} \
    && useradd -m -s /bin/bash -u ${UID} -g ${GID} ${GROUPNAME}
USER ${USERNAME}
WORKDIR ${WORKDIR}
RUN chown -R ${USERNAME}:${GROUPNAME} ${WORKDIR}

# Install Python packages
COPY pyproject.toml ./
COPY poetry.lock ./
RUN poetry config virtualenvs.in-project true
RUN poetry install