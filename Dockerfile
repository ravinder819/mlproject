FROM python:3.10-slim-buster

WORKDIR /app

COPY . /app

RUN  apt-get update && apt-get install -y

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 7860

CMD ["python", "application.py"]