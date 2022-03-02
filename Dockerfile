FROM python:3.11.0a3-alpine3.15
LABEL maintainer=lahcen90

RUN apk --no-cache add python3 py3-pip

COPY . /app
WORKDIR /app

RUN pip3 install -r /app/requirements.txt

ENTRYPOINT ["/app/gitdi.py"]
