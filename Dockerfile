FROM python:3.10-slim

WORKDIR /app

COPY ./src/app.py /app/

CMD ["python", "app.py"]