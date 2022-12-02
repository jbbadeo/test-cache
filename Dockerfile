FROM python:3.9

EXPOSE 8080

RUN pip install --upgrade pip
COPY requirements.txt /requirements.txt

RUN pip install -r requirements.txt

WORKDIR .
CMD ["ping", "google.fr"]
