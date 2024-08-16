FROM python:3.9

COPY . .

RUN pip install -r requirements

EXPOSE 5000

CMD ["Python", "app.py")
