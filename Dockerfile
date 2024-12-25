FROM ubuntu:latest

WORKDIR /app

COPY ./src/app.py /app/
COPY ./requirements.txt /app/


RUN apt-get update
RUN apt-get install -y python3 python3-pip python3-venv
RUN python3 -m venv venv
RUN ./venv/bin/python -m pip install --no-cache-dir -r requirements.txt

CMD ["./venv/bin/python", "app.py"]