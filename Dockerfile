FROM python:3.10-slim

WORKDIR /app

COPY ./src/app.py /app/
COPY ./src/requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]