FROM python:3.7-alpine
MAINTAINER Jeremiah

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /two_recipe
WORKDIR /two_recipe
COPY ./two_recipe /two_recipe

RUN adduser -D user
USER user
