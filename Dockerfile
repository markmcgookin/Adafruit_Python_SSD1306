FROM python:2.7.16-slim-buster

WORKDIR /app

COPY run.py .
COPY Adafruit_SSD1306/* ./Adafruit_SSD1306/
COPY *.ttf ./

CMD [ "python", "./run.py", "~/data/info.dat"]