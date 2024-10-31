FROM python:3.10
RUN pip install fastapi boto3 uvicorn pyjwt requests cryptography
COPY /app /app
COPY run.sh /usr/bin/run.sh
WORKDIR /app
CMD ["/usr/bin/run.sh"]