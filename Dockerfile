FROM alpine:latest

#RUN apk add --no-cache bash uwsgi uwsgi-python py2-pip 
RUN apk add --no-cache bash py2-pip 
RUN pip2 install --upgrade pip 
RUN pip2 install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
