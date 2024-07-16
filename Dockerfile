FROM python:3.13.0b3-bookworm

WORKDIR  /app

COPY . .

RUN pip install -r requirments.txt && apt install -y mariadb-server

ENV password=my-pass

EXPOSE 5000

CMD python app.py

ENTRYPOINT python app.py






