FROM python:3.8.0b1-stretch AS installer

WORKDIR /app
ADD ./requirements.txt /app/

RUN pip3 install -r ./requirements.txt

RUN rm -rf /app

FROM installer

CMD ["python3"]
