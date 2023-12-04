# Use an official Python runtime as a parent image
FROM python:3.9.18-alpine3.18

RUN apk --update add gcc build-base freetype-dev libpng-dev openblas-dev

RUN apk add bash

RUN python -m pip install --upgrade pip

RUN pip install --no-cache-dir matplotlib pandas

RUN pip install mysql-connector-python \
    && pip install sqlalchemy 
