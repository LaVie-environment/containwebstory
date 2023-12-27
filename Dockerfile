FROM alpine:3.5

RUN apk add --update python3

COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache-dir -r /usr/src/app/requirements.txt

# RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt


COPY app.py /usr/src/app/
COPY templates/ /usr/src/app/templates/
COPY static/ /usr/src/app/static/

EXPOSE 5000

CMD ["python3", "/usr/src/app/app.py"]
