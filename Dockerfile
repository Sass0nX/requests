FROM python:3.8.15-alpine3.16

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "http_e.py"]