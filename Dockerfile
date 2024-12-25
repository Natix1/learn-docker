FROM ubuntu:latest

WORKDIR /app

COPY ./src/app.py /app/
COPY ./requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]