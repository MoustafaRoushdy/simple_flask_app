FROM python:3.13-rc-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

ENV password=123456

EXPOSE 5000

CMD python app.py 