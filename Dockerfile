# docker-flask
# https://github.com/alafazam/docker-flask


FROM fedora
MAINTAINER http://fedoraproject.org/wiki/Cloud

#ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get update
#RUN apt-get install -y python python-pip python-virtualenv nginx gunicorn supervisor

RUN dnf update 
RUN dnf install nginx python-pip python-virtualenv

# Setup flask application
RUN mkdir -p /deploy/app
COPY app /deploy/app
RUN pip install -r /deploy/app/requirements.txt

# Setup nginx
RUN rm /etc/nginx/sites-enabled/default
COPY flask.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/flask.conf /etc/nginx/sites-enabled/flask.conf
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

