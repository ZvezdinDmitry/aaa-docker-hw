FROM python:3.8

ENV FLASK_APP=server
LABEL version="0.1.0"

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

EXPOSE 8080

CMD ["python", "server.py"]