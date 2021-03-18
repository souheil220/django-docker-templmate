FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /folder 
WORKDIR /folder

COPY ./folder /folder

RUN adduser -D user

USER user