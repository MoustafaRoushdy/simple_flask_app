from python:latest

workdir /app

COPY requirements.txt .

RUN pip install -r  requirements.txt

copy app.py

expose 5000

cmd python app.py
