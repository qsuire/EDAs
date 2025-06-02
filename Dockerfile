FROM python:3.7-slim

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN pip install --upgrade pip \
 && pip install -r requirements.docker.txt \
 && pip install -e .
