# Use an official Python runtime as a parent image
FROM python:3.9.18-alpine3.18

RUN apk update && apk add bash

RUN pip install --upgrade pip \
    && pip install mysql-connector-python \
    && pip install sqlalchemy \
    && pip install pandas
