FROM python:3.7.7-stretch AS installer

WORKDIR /app
ADD ./requirements.txt /app/

RUN pip3 install -r ./requirements.txt

RUN rm -rf /app

FROM installer

CMD ["python3"]
