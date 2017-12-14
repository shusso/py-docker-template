FROM python:3

WORKDIR /app
ADD ./requirements.txt /app/requirements.txt

RUN pip3 install -r ./requirements.txt

RUN rm -rf /app

CMD ["python3"]
