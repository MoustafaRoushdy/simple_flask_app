
FROM python:3.13-rc-slim


WORKDIR /app


COPY . .


RUN pip install -r requirements.txt


ENV password=mysupersecretpassword


EXPOSE 5000

CMD python app.py

