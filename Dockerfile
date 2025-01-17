FROM python:alpine3.19

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY WOL-proxy.py .

ENTRYPOINT ["python", "./WOL-proxy.py"]
