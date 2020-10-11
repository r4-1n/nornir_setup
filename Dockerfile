# Get Ubuntu:latest
FROM ubuntu:latest
# Set working Directory
WORKDIR /home/
# Update Repos
RUN apt-get update && apt-get install -y \
# Install python3 and upgrade pip3
  git \
  python3.6 \
  python3-pip \
  tree \
  vim \
  wget \
&& python3 -m pip install --upgrade pip \
# Install nornir3, ipython pipenv w/ pip3
&& pip3 install \
  ipython \
  nornir \
  pipenv \
# Create nornir3 standard files
&& touch \
  configs.yml \
  defaults.yml \
  groups.yml \
  hosts.yml \
# Create nornir3 inventory folder
&& mkdir \
  ./inventory \
# Move nornir3 files to /inventory/
&& mv \
  defaults.yml \
  groups.yml \
  hosts.yml \
  ./inventory
