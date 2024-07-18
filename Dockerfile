FROM python:3.13-rc-slim

WORKDIR  /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 6000

CMD python app.py




