FROM python:latest
RUN git clone https://github.com/r4-1n/nornir_setup.git \ 
&& git clone https://github.com/nornir-automation/nornir-tools.git 
RUN cd /nornir_setup \ 
&& pip install -r requirements.txt \ 
&& pip install pipenv 
# && pipenv install --system --deploy --ignore-pipfile
CMD = [ "pipenv", "install", "--system", "--deploy ", "--ignore-pipfile" ]