FROM python:latest
RUN git clone https://github.com/r4-1n/nornir_setup.git \ 
&& git clone https://github.com/nornir-automation/nornir-tools.git 
WORKDIR ./nornir_setup/
RUN pip install pipenv \
&& pip install -r requirements.txt \ 
&& pipenv install --system --deploy --ignore-pipfile
CMD = [ "pipenv", "shell" ]