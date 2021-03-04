FROM python:3.8

#the reason for this is that it doesn't allow Python to buffer the outputs. It just prints them directly.And this avoids some complications & things like that when the docker image when you're running your python application.
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app
