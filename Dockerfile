FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app

RUN apt update && apt install awscli -y

RUN apt-get update && apt-get install -r requirements.txt -y
CMD ["python3", "app.py"]