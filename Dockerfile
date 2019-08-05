FROM schachr/raspbian-stretch
RUN apt-get update && apt-get install -yy python python-dev python-setuptools ca-certificates build-essential python-pil python-pip
RUN pip install RPi.GPIO
ADD . /code
WORKDIR /code


WORKDIR /app

COPY run.py .
COPY *.ttf ./

CMD [ "python", "./run.py", "~/data/info.dat"]