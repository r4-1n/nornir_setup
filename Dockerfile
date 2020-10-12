FROM python:latest
#Clone repos and install required nornir packages
RUN git clone https://github.com/r4-1n/nornir_setup.git \
&& cd /nornir_setup \
&& git clone https://github.com/nornir-automation/nornir-tools.git \
&& pip install -r requirements.txt
CMD = [ "ipython" ]
