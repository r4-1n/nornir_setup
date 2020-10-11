FROM pipenv:latest
# RUN
RUN git clone https://github.com/r4-1n/nornir_setup.git \
  && git clone https://github.com/nornir-automation/nornir-tools.git \
  && apt-get update && apt-get install -y \
     vim \
  && pip3 install \
     pipenv \
  && pipenv install \
     nornir-scrapli  \
     nornir-netmiko  \
     nornir-jinja2 \
     nornir-napalm \
#     nornir-tests \
     nornir-rich \
     nornir-bics \
     nornir-utils \
     nornir \
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
#CMD [ "pipenv", "shell" ]
