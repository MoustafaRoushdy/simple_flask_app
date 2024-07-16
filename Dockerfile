#!/bin/bash

FROM python:3.13.0b3-slim

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "app.py"]




