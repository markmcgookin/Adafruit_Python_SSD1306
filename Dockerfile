FROM schachr/raspbian-stretch
RUN apt-get update && apt-get install -yy python python-dev python-setuptools ca-certificates build-essential python-pil python-pip
ADD . /code
WORKDIR /code
RUN python setup.py install
RUN pip install -r requirements.txt

WORKDIR /app

COPY run.py .
COPY *.ttf ./

CMD [ "python", "./run.py", "~/data/info.dat"]

#FROM arm32v6/python:2.7.16-alpine3.10

#WORKDIR /app

#COPY run.py .
#COPY setup.py .
#COPY README.md .
#COPY Adafruit_SSD1306/* ./Adafruit_SSD1306/
#COPY *.ttf ./

#RUN ["apk", "update"]
#RUN ["apk", "add", "build-base"]
#RUN ["apk", "add", "python-dev"]

#RUN ["python", "setup.py", "install"]

#CMD [ "python", "./run.py", "~/data/info.dat"]

#https://github.com/adafruit/Adafruit_Python_SSD1306/pull/34