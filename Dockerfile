FROM python:3.13-alpine

WORKDIR /app

COPY . /app

RUN pip3 install -r ./requirements.txt

RUN rm -rf /tmp/*
RUN rm -rf /var/cache/*

ENV PYTHONPATH="/app"

CMD [ "python3", "MarkovChainBot.py" ]
