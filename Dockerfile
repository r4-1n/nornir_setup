FROM python:latest
# RUN
ENV PROJECT_DIR /usr/local/src/

WORKDIR ${PROJECT_DIR}

COPY Pipfile Pipfile.lock ${PROJECT_DIR}/

RUN git clone https://github.com/r4-1n/nornir_setup.git \
  && git clone https://github.com/nornir-automation/nornir-tools.git \
  && apt-get update && apt-get install -y && add-apt-repository ppa:deadsnakes/ppa -y \
     vim \
  && pip3 install \
     pipenv \
  && python3 -m pipenv install \
     nornir \
     nornir_ansible \
     nornir_jinja2 \
     nornir_napalm \
     nornir_netbox \
     nornir_netmiko  \
     nornir_scrapli  \
     nornir_utils \
     vipython 
# Create nornir3 standard files
#&& touch \
#  configs.yml \
#  defaults.yml \
#  groups.yml \
#  hosts.yml \
## Create nornir3 inventory folder#&& mkdir \
#  ./inventory \## Move nornir3 files to /inventory/
#&& mv \
#  defaults.yml \
#  groups.yml \
#  hosts.yml \
#  ./inventory \
## clone useful nornir-tools
#&& git clone https://github.com/nornir-automation/nornir-tools.git
