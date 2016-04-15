FROM python:2
COPY requirements.txt /requestbin/
WORKDIR /requestbin
RUN pip install -r requirements.txt
COPY . /requestbin/
CMD PORT=8080 python web.py
