From python:3.13-rc-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python app.py

#ENTRYPOINT python app.py
#ENV password=mysupersecretpassword
